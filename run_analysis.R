
library(reshape2)

# This program reads the wearable computing data and does the following:
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of
#    each variable for each activity and each subject. 
# 

# The list of activities

# 1 WALKING
# 2 WALKING_UPSTAIRS
# 3 WALKING_DOWNSTAIRS
# 4 SITTING
# 5 STANDING
# 6 LAYING

# Read the data files into data frames

print('Loading test data')
testData <- read.table("UCI HAR Dataset/test/X_test.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
testActivity <- read.table("UCI HAR Dataset/test/y_test.txt")

print('Loading train data')
trainData <- read.table("UCI HAR Dataset/train/X_train.txt")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainActivity <- read.table("UCI HAR Dataset/train/y_train.txt")

# Combine into one set of data, extracting only the columns needed

print('Extracting data')
testDf <- data.frame(
	"subject"=testSubject[,1],
	"activity"=factor(testActivity[,1],
		# levels=c(1,2,3,4,5,6),
		labels=c(
			"Walking",
			"Walking_Upstairs",
			"Walking_Downstairs",
			"Sitting",
			"Standing",
			"Laying"
		)
	),
	"tBodyAcc_mean_X"=testData[,1],
	"tBodyAcc_mean_Y"=testData[,2],
	"tBodyAcc_mean_Z"=testData[,3],
	"tBodyAcc_std_X"=testData[,4],
	"tBodyAcc_std_Y"=testData[,5],
	"tBodyAcc_std_Z"=testData[,6],
	"tGravityAcc_mean_X"=testData[,41],
	"tGravityAcc_mean_Y"=testData[,42],
	"tGravityAcc_mean_Z"=testData[,43],
	"tGravityAcc_std_X"=testData[,44],
	"tGravityAcc_std_Y"=testData[,45],
	"tGravityAcc_std_Z"=testData[,46],
	"tBodyAccJerk_mean_X"=testData[,81],
	"tBodyAccJerk_mean_Y"=testData[,82],
	"tBodyAccJerk_mean_Z"=testData[,83],
	"tBodyAccJerk_std_X"=testData[,84],
	"tBodyAccJerk_std_Y"=testData[,85],
	"tBodyAccJerk_std_Z"=testData[,86],
	"tBodyGyro_mean_X"=testData[,121],
	"tBodyGyro_mean_Y"=testData[,122],
	"tBodyGyro_mean_Z"=testData[,123],
	"tBodyGyro_std_X"=testData[,124],
	"tBodyGyro_std_Y"=testData[,125],
	"tBodyGyro_std_Z"=testData[,126],
	"tBodyGyroJerk_mean_X"=testData[,161],
	"tBodyGyroJerk_mean_Y"=testData[,162],
	"tBodyGyroJerk_mean_Z"=testData[,163],
	"tBodyGyroJerk_std_X"=testData[,164],
	"tBodyGyroJerk_std_Y"=testData[,165],
	"tBodyGyroJerk_std_Z"=testData[,166],
	"tBodyAccMag_mean"=testData[,201],
	"tBodyAccMag_std"=testData[,202],
	"tGravityAccMag_mean"=testData[,214],
	"tGravityAccMag_std"=testData[,215],
	"tBodyAccJerkMag_mean"=testData[,227],
	"tBodyAccJerkMag_std"=testData[,228],
	"tBodyGyroMag_mean"=testData[,240],
	"tBodyGyroMag_std"=testData[,241],
	"tBodyGyroJerkMag_mean"=testData[,253],
	"tBodyGyroJerkMag_std"=testData[,254],
	"fBodyAcc_mean_X"=testData[,266],
	"fBodyAcc_mean_Y"=testData[,267],
	"fBodyAcc_mean_Z"=testData[,268],
	"fBodyAcc_std_X"=testData[,269],
	"fBodyAcc_std_Y"=testData[,270],
	"fBodyAcc_std_Z"=testData[,271],
	"fBodyAccJerk_mean_X"=testData[,345],
	"fBodyAccJerk_mean_Y"=testData[,346],
	"fBodyAccJerk_mean_Z"=testData[,347],
	"fBodyAccJerk_std_X"=testData[,348],
	"fBodyAccJerk_std_Y"=testData[,349],
	"fBodyAccJerk_std_Z"=testData[,350],
	"fBodyGyro_mean_X"=testData[,424],
	"fBodyGyro_mean_Y"=testData[,425],
	"fBodyGyro_mean_Z"=testData[,426],
	"fBodyGyro_std_X"=testData[,427],
	"fBodyGyro_std_Y"=testData[,428],
	"fBodyGyro_std_Z"=testData[,429],
	"fBodyAccMag_mean"=testData[,503],
	"fBodyAccMag_std"=testData[,504],
	"fBodyBodyAccJerkMag_mean"=testData[,516],
	"fBodyBodyAccJerkMag_std"=testData[,517],
	"fBodyBodyGyroMag_mean"=testData[,529],
	"fBodyBodyGyroMag_std"=testData[,530],
	"fBodyBodyGyroJerkMag_mean"=testData[,542],
	"fBodyBodyGyroJerkMag_std"=testData[,543]
)

trainDf <- data.frame(
	"subject"=trainSubject[,1],
	"activity"=factor(trainActivity[,1],
		# levels=c(1,2,3,4,5,6),
		labels=c(
			"Walking",
			"Walking_Upstairs",
			"Walking_Downstairs",
			"Sitting",
			"Standing",
			"Laying"
		)
	),
	"tBodyAcc_mean_X"=trainData[,1],
	"tBodyAcc_mean_Y"=trainData[,2],
	"tBodyAcc_mean_Z"=trainData[,3],
	"tBodyAcc_std_X"=trainData[,4],
	"tBodyAcc_std_Y"=trainData[,5],
	"tBodyAcc_std_Z"=trainData[,6],
	"tGravityAcc_mean_X"=trainData[,41],
	"tGravityAcc_mean_Y"=trainData[,42],
	"tGravityAcc_mean_Z"=trainData[,43],
	"tGravityAcc_std_X"=trainData[,44],
	"tGravityAcc_std_Y"=trainData[,45],
	"tGravityAcc_std_Z"=trainData[,46],
	"tBodyAccJerk_mean_X"=trainData[,81],
	"tBodyAccJerk_mean_Y"=trainData[,82],
	"tBodyAccJerk_mean_Z"=trainData[,83],
	"tBodyAccJerk_std_X"=trainData[,84],
	"tBodyAccJerk_std_Y"=trainData[,85],
	"tBodyAccJerk_std_Z"=trainData[,86],
	"tBodyGyro_mean_X"=trainData[,121],
	"tBodyGyro_mean_Y"=trainData[,122],
	"tBodyGyro_mean_Z"=trainData[,123],
	"tBodyGyro_std_X"=trainData[,124],
	"tBodyGyro_std_Y"=trainData[,125],
	"tBodyGyro_std_Z"=trainData[,126],
	"tBodyGyroJerk_mean_X"=trainData[,161],
	"tBodyGyroJerk_mean_Y"=trainData[,162],
	"tBodyGyroJerk_mean_Z"=trainData[,163],
	"tBodyGyroJerk_std_X"=trainData[,164],
	"tBodyGyroJerk_std_Y"=trainData[,165],
	"tBodyGyroJerk_std_Z"=trainData[,166],
	"tBodyAccMag_mean"=trainData[,201],
	"tBodyAccMag_std"=trainData[,202],
	"tGravityAccMag_mean"=trainData[,214],
	"tGravityAccMag_std"=trainData[,215],
	"tBodyAccJerkMag_mean"=trainData[,227],
	"tBodyAccJerkMag_std"=trainData[,228],
	"tBodyGyroMag_mean"=trainData[,240],
	"tBodyGyroMag_std"=trainData[,241],
	"tBodyGyroJerkMag_mean"=trainData[,253],
	"tBodyGyroJerkMag_std"=trainData[,254],
	"fBodyAcc_mean_X"=trainData[,266],
	"fBodyAcc_mean_Y"=trainData[,267],
	"fBodyAcc_mean_Z"=trainData[,268],
	"fBodyAcc_std_X"=trainData[,269],
	"fBodyAcc_std_Y"=trainData[,270],
	"fBodyAcc_std_Z"=trainData[,271],
	"fBodyAccJerk_mean_X"=trainData[,345],
	"fBodyAccJerk_mean_Y"=trainData[,346],
	"fBodyAccJerk_mean_Z"=trainData[,347],
	"fBodyAccJerk_std_X"=trainData[,348],
	"fBodyAccJerk_std_Y"=trainData[,349],
	"fBodyAccJerk_std_Z"=trainData[,350],
	"fBodyGyro_mean_X"=trainData[,424],
	"fBodyGyro_mean_Y"=trainData[,425],
	"fBodyGyro_mean_Z"=trainData[,426],
	"fBodyGyro_std_X"=trainData[,427],
	"fBodyGyro_std_Y"=trainData[,428],
	"fBodyGyro_std_Z"=trainData[,429],
	"fBodyAccMag_mean"=trainData[,503],
	"fBodyAccMag_std"=trainData[,504],
	"fBodyBodyAccJerkMag_mean"=trainData[,516],
	"fBodyBodyAccJerkMag_std"=trainData[,517],
	"fBodyBodyGyroMag_mean"=trainData[,529],
	"fBodyBodyGyroMag_std"=trainData[,530],
	"fBodyBodyGyroJerkMag_mean"=trainData[,542],
	"fBodyBodyGyroJerkMag_std"=trainData[,543]
)

print('Combining data')
combined <- rbind(testDf, trainDf)

print('Writing combined data file')
combinedOut <- combined
combinedOut$activity <- as.character(combinedOut$activity)
write.table(combinedOut, file='combined.txt', sep='\t')

print('Melting combined data frame')
combMelt <- melt(combined, id=c('subject', 'activity'), measure.vars=c(
			"tBodyAcc_mean_X",
			"tBodyAcc_mean_Y",
			"tBodyAcc_mean_Z",
			"tBodyAcc_std_X",
			"tBodyAcc_std_Y",
			"tBodyAcc_std_Z",
			"tGravityAcc_mean_X",
			"tGravityAcc_mean_Y",
			"tGravityAcc_mean_Z",
			"tGravityAcc_std_X",
			"tGravityAcc_std_Y",
			"tGravityAcc_std_Z",
			"tBodyAccJerk_mean_X",
			"tBodyAccJerk_mean_Y",
			"tBodyAccJerk_mean_Z",
			"tBodyAccJerk_std_X",
			"tBodyAccJerk_std_Y",
			"tBodyAccJerk_std_Z",
			"tBodyGyro_mean_X",
			"tBodyGyro_mean_Y",
			"tBodyGyro_mean_Z",
			"tBodyGyro_std_X",
			"tBodyGyro_std_Y",
			"tBodyGyro_std_Z",
			"tBodyGyroJerk_mean_X",
			"tBodyGyroJerk_mean_Y",
			"tBodyGyroJerk_mean_Z",
			"tBodyGyroJerk_std_X",
			"tBodyGyroJerk_std_Y",
			"tBodyGyroJerk_std_Z",
			"tBodyAccMag_mean",
			"tBodyAccMag_std",
			"tGravityAccMag_mean",
			"tGravityAccMag_std",
			"tBodyAccJerkMag_mean",
			"tBodyAccJerkMag_std",
			"tBodyGyroMag_mean",
			"tBodyGyroMag_std",
			"tBodyGyroJerkMag_mean",
			"tBodyGyroJerkMag_std",
			"fBodyAcc_mean_X",
			"fBodyAcc_mean_Y",
			"fBodyAcc_mean_Z",
			"fBodyAcc_std_X",
			"fBodyAcc_std_Y",
			"fBodyAcc_std_Z",
			"fBodyAccJerk_mean_X",
			"fBodyAccJerk_mean_Y",
			"fBodyAccJerk_mean_Z",
			"fBodyAccJerk_std_X",
			"fBodyAccJerk_std_Y",
			"fBodyAccJerk_std_Z",
			"fBodyGyro_mean_X",
			"fBodyGyro_mean_Y",
			"fBodyGyro_mean_Z",
			"fBodyGyro_std_X",
			"fBodyGyro_std_Y",
			"fBodyGyro_std_Z",
			"fBodyAccMag_mean",
			"fBodyAccMag_std",
			"fBodyBodyAccJerkMag_mean",
			"fBodyBodyAccJerkMag_std",
			"fBodyBodyGyroMag_mean",
			"fBodyBodyGyroMag_std",
			"fBodyBodyGyroJerkMag_mean",
			"fBodyBodyGyroJerkMag_std"
	)
)

print('Casting data frame')
subjectActivityData = dcast(combMelt, subject + activity ~ variable, mean)

print('Writing SubjectActivity data file')
subjectActivityData$activity <- as.character(subjectActivityData$activity)
write.table(subjectActivityData, file='subjectActivity.txt', sep='\t')
