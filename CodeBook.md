Code Book for Getting & Cleaning Data Project
=============================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation of the values


The run_analysis.R script generates two files:
==============================================

* combined.txt - a tab-delimited file with both the training and test datasets
* subjectActivity.txt - a tab-delimited summary file based on the combined data with mean values for the features by subject by activity

## combined.txt

1. subject - The number of the subject (1-30)
1. activity - The activity - one of the following values: Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying
1. tBodyAcc_mean_X - normalized ranging from -1 to 1
1. tBodyAcc_mean_Y  - normalized ranging from -1 to 1
1. tBodyAcc_mean_Z  - normalized ranging from -1 to 1
1. tBodyAcc_std_X  - normalized ranging from -1 to 1
1. tBodyAcc_std_Y  - normalized ranging from -1 to 1
1. tBodyAcc_std_Z  - normalized ranging from -1 to 1
1. tGravityAcc_mean_X  - normalized ranging from -1 to 1
1. tGravityAcc_mean_Y  - normalized ranging from -1 to 1
1. tGravityAcc_mean_Z  - normalized ranging from -1 to 1
1. tGravityAcc_std_X  - normalized ranging from -1 to 1
1. tGravityAcc_std_Y  - normalized ranging from -1 to 1
1. tGravityAcc_std_Z  - normalized ranging from -1 to 1
1. tBodyAccJerk_mean_X  - normalized ranging from -1 to 1
1. tBodyAccJerk_mean_Y  - normalized ranging from -1 to 1
1. tBodyAccJerk_mean_Z  - normalized ranging from -1 to 1
1. tBodyAccJerk_std_X  - normalized ranging from -1 to 1
1. tBodyAccJerk_std_Y  - normalized ranging from -1 to 1
1. tBodyAccJerk_std_Z  - normalized ranging from -1 to 1
1. tBodyGyro_mean_X  - normalized ranging from -1 to 1
1. tBodyGyro_mean_Y  - normalized ranging from -1 to 1
1. tBodyGyro_mean_Z  - normalized ranging from -1 to 1
1. tBodyGyro_std_X  - normalized ranging from -1 to 1
1. tBodyGyro_std_Y  - normalized ranging from -1 to 1
1. tBodyGyro_std_Z  - normalized ranging from -1 to 1
1. tBodyGyroJerk_mean_X  - normalized ranging from -1 to 1
1. tBodyGyroJerk_mean_Y  - normalized ranging from -1 to 1
1. tBodyGyroJerk_mean_Z  - normalized ranging from -1 to 1
1. tBodyGyroJerk_std_X  - normalized ranging from -1 to 1
1. tBodyGyroJerk_std_Y  - normalized ranging from -1 to 1
1. tBodyGyroJerk_std_Z  - normalized ranging from -1 to 1
1. tBodyAccMag_mean  - normalized ranging from -1 to 1
1. tBodyAccMag_std  - normalized ranging from -1 to 1
1. tGravityAccMag_mean  - normalized ranging from -1 to 1
1. tGravityAccMag_std  - normalized ranging from -1 to 1
1. tBodyAccJerkMag_mean  - normalized ranging from -1 to 1
1. tBodyAccJerkMag_std  - normalized ranging from -1 to 1
1. tBodyGyroMag_mean  - normalized ranging from -1 to 1
1. tBodyGyroMag_std  - normalized ranging from -1 to 1
1. tBodyGyroJerkMag_mean  - normalized ranging from -1 to 1
1. tBodyGyroJerkMag_std  - normalized ranging from -1 to 1
1. fBodyAcc_mean_X  - normalized ranging from -1 to 1
1. fBodyAcc_mean_Y  - normalized ranging from -1 to 1
1. fBodyAcc_mean_Z  - normalized ranging from -1 to 1
1. fBodyAcc_std_X  - normalized ranging from -1 to 1
1. fBodyAcc_std_Y  - normalized ranging from -1 to 1
1. fBodyAcc_std_Z  - normalized ranging from -1 to 1
1. fBodyAccJerk_mean_X  - normalized ranging from -1 to 1
1. fBodyAccJerk_mean_Y  - normalized ranging from -1 to 1
1. fBodyAccJerk_mean_Z  - normalized ranging from -1 to 1
1. fBodyAccJerk_std_X  - normalized ranging from -1 to 1
1. fBodyAccJerk_std_Y  - normalized ranging from -1 to 1
1. fBodyAccJerk_std_Z  - normalized ranging from -1 to 1
1. fBodyGyro_mean_X  - normalized ranging from -1 to 1
1. fBodyGyro_mean_Y  - normalized ranging from -1 to 1
1. fBodyGyro_mean_Z  - normalized ranging from -1 to 1
1. fBodyGyro_std_X  - normalized ranging from -1 to 1
1. fBodyGyro_std_Y  - normalized ranging from -1 to 1
1. fBodyGyro_std_Z  - normalized ranging from -1 to 1
1. fBodyAccMag_mean  - normalized ranging from -1 to 1
1. fBodyAccMag_std  - normalized ranging from -1 to 1
1. fBodyBodyAccJerkMag_mean  - normalized ranging from -1 to 1
1. fBodyBodyAccJerkMag_std  - normalized ranging from -1 to 1
1. fBodyBodyGyroMag_mean  - normalized ranging from -1 to 1
1. fBodyBodyGyroMag_std  - normalized ranging from -1 to 1
1. fBodyBodyGyroJerkMag_mean  - normalized ranging from -1 to 1
1. fBodyBodyGyroJerkMag_std  - normalized ranging from -1 to 1

## subjectActivity.txt

1. subject - The number of the subject (1-30)
1. activity - The activity on of the following values: Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying
1. tBodyAcc_mean_X  - normalized ranging from -1 to 1
1. tBodyAcc_mean_Y  - normalized ranging from -1 to 1
1. tBodyAcc_mean_Z  - normalized ranging from -1 to 1
1. tBodyAcc_std_X  - normalized ranging from -1 to 1
1. tBodyAcc_std_Y  - normalized ranging from -1 to 1
1. tBodyAcc_std_Z  - normalized ranging from -1 to 1
1. tGravityAcc_mean_X  - normalized ranging from -1 to 1
1. tGravityAcc_mean_Y  - normalized ranging from -1 to 1
1. tGravityAcc_mean_Z  - normalized ranging from -1 to 1
1. tGravityAcc_std_X  - normalized ranging from -1 to 1
1. tGravityAcc_std_Y  - normalized ranging from -1 to 1
1. tGravityAcc_std_Z  - normalized ranging from -1 to 1
1. tBodyAccJerk_mean_X  - normalized ranging from -1 to 1
1. tBodyAccJerk_mean_Y  - normalized ranging from -1 to 1
1. tBodyAccJerk_mean_Z  - normalized ranging from -1 to 1
1. tBodyAccJerk_std_X  - normalized ranging from -1 to 1
1. tBodyAccJerk_std_Y  - normalized ranging from -1 to 1
1. tBodyAccJerk_std_Z  - normalized ranging from -1 to 1
1. tBodyGyro_mean_X  - normalized ranging from -1 to 1
1. tBodyGyro_mean_Y  - normalized ranging from -1 to 1
1. tBodyGyro_mean_Z  - normalized ranging from -1 to 1
1. tBodyGyro_std_X  - normalized ranging from -1 to 1
1. tBodyGyro_std_Y  - normalized ranging from -1 to 1
1. tBodyGyro_std_Z  - normalized ranging from -1 to 1
1. tBodyGyroJerk_mean_X  - normalized ranging from -1 to 1
1. tBodyGyroJerk_mean_Y  - normalized ranging from -1 to 1
1. tBodyGyroJerk_mean_Z  - normalized ranging from -1 to 1
1. tBodyGyroJerk_std_X  - normalized ranging from -1 to 1
1. tBodyGyroJerk_std_Y  - normalized ranging from -1 to 1
1. tBodyGyroJerk_std_Z  - normalized ranging from -1 to 1
1. tBodyAccMag_mean  - normalized ranging from -1 to 1
1. tBodyAccMag_std  - normalized ranging from -1 to 1
1. tGravityAccMag_mean  - normalized ranging from -1 to 1
1. tGravityAccMag_std  - normalized ranging from -1 to 1
1. tBodyAccJerkMag_mean  - normalized ranging from -1 to 1
1. tBodyAccJerkMag_std  - normalized ranging from -1 to 1
1. tBodyGyroMag_mean  - normalized ranging from -1 to 1
1. tBodyGyroMag_std  - normalized ranging from -1 to 1
1. tBodyGyroJerkMag_mean  - normalized ranging from -1 to 1
1. tBodyGyroJerkMag_std  - normalized ranging from -1 to 1
1. fBodyAcc_mean_X  - normalized ranging from -1 to 1
1. fBodyAcc_mean_Y  - normalized ranging from -1 to 1
1. fBodyAcc_mean_Z  - normalized ranging from -1 to 1
1. fBodyAcc_std_X  - normalized ranging from -1 to 1
1. fBodyAcc_std_Y  - normalized ranging from -1 to 1
1. fBodyAcc_std_Z  - normalized ranging from -1 to 1
1. fBodyAccJerk_mean_X  - normalized ranging from -1 to 1
1. fBodyAccJerk_mean_Y  - normalized ranging from -1 to 1
1. fBodyAccJerk_mean_Z  - normalized ranging from -1 to 1
1. fBodyAccJerk_std_X  - normalized ranging from -1 to 1
1. fBodyAccJerk_std_Y  - normalized ranging from -1 to 1
1. fBodyAccJerk_std_Z  - normalized ranging from -1 to 1
1. fBodyGyro_mean_X  - normalized ranging from -1 to 1
1. fBodyGyro_mean_Y  - normalized ranging from -1 to 1
1. fBodyGyro_mean_Z  - normalized ranging from -1 to 1
1. fBodyGyro_std_X  - normalized ranging from -1 to 1
1. fBodyGyro_std_Y  - normalized ranging from -1 to 1
1. fBodyGyro_std_Z  - normalized ranging from -1 to 1
1. fBodyAccMag_mean  - normalized ranging from -1 to 1
1. fBodyAccMag_std  - normalized ranging from -1 to 1
1. fBodyBodyAccJerkMag_mean  - normalized ranging from -1 to 1
1. fBodyBodyAccJerkMag_std  - normalized ranging from -1 to 1
1. fBodyBodyGyroMag_mean  - normalized ranging from -1 to 1
1. fBodyBodyGyroMag_std  - normalized ranging from -1 to 1
1. fBodyBodyGyroJerkMag_mean  - normalized ranging from -1 to 1
1. fBodyBodyGyroJerkMag_std  - normalized ranging from -1 to 1
