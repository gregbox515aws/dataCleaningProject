
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

# Define the list of activities

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

# Read the data files into data frames

testData <- read.table"UCI HAR Dataset/test/X_test.txt")
testSubject <- read.table"UCI HAR Dataset/test/subject_test.txt")
testActivity <- read.table"UCI HAR Dataset/test/y_test.txt")

trainData <- read.table"UCI HAR Dataset/train/X_train.txt")
trainSubject <- read.table"UCI HAR Dataset/train/subject_train.txt")
trainActivity <- read.table"UCI HAR Dataset/train/y_train.txt")

# Combine into one set of data, extracting only the columns needed


