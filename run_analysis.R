#Read data from test
testX = read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
testY = read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
testSubject = read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
#Combine data set with Activity number code and subject number
testX$Activity = testY[,1]
testX$Subject = testSubject[,1]


#Read data from train
trainX = read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainY = read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainSubject = read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
#Combine data set with Activity number code and subject number
trainX$Activity = trainY[,1]
trainX$Subject = trainSubject[,1]

#Combine test and train data sets into one
full = merge(testX,trainX,all=TRUE)


full$Activity = as.character(full$Activity)

#Replace each Activity code with the activity
full$Activity = sub("1", "walking", full$Activity)
full$Activity = sub("2", "walking_upstairs", full$Activity)
full$Activity = sub("3", "waling_downstairs", full$Activity)
full$Activity = sub("4", "sitting", full$Activity)
full$Activity = sub("5", "standing", full$Activity)
full$Activity = sub("6", "laying", full$Activity)


#Read the column names from the features.txt file
colNamesX = read.table("UCI HAR Dataset/features.txt", header = FALSE)
names(full) = c(as.character(colNamesX[,2]),"Activity", "Subject")

#Use grep and regex to get the indeces of the columns with names that are means or standard deviations
meanStdIndeces = grep("mean\\(|std\\(", colNamesX[,2], ignore.case = TRUE)

#Extract the specified rows from the full data set
meanStdX = full[,meanStdIndeces]

averages = meanStdX

#Add the columns for subject and activity
meanStdX$Subject = full$Subject
meanStdX$Activity = full$Activity


#Put subject and activity at the front of the data frame
meanStdX = meanStdX[,c(67,68,1:66)]

result = aggregate(meanStdX[,3:ncol(meanStdX)],list(Activity=meanStdX$Activity, Subject=meanStdX$Subject), mean)


#write results to a csv file
write.csv(result, file = "output.csv")


