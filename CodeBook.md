Code Book for Getting & Cleaning Data Project
=============================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value | the mean of the values for this subject activity combination
std(): Standard deviation


The run_analysis.R script generates two files:
----------------------------------------------

* combined.txt - a tab-delimited file with both the training and test datasets
* subjectActivity.txt - a tab-delimited summary file based on the combined data with mean values for the features by subject by activity  | the mean of the values for this subject activity combination

### combined.txt

column name | description
--------------------------
subject | The number of the subject (1-30)
activity | The activity on of the following values: Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying
tBodyAcc_mean_X | the mean of the values for this subject activity combination
tBodyAcc_mean_Y | the mean of the values for this subject activity combination
tBodyAcc_mean_Z | the mean of the values for this subject activity combination
tBodyAcc_std_X | the standard deviation of the values for this subject activity combination
tBodyAcc_std_Y | the standard deviation of the values for this subject activity combination
tBodyAcc_std_Z | the standard deviation of the values for this subject activity combination
tGravityAcc_mean_X | the mean of the values for this subject activity combination
tGravityAcc_mean_Y | the mean of the values for this subject activity combination
tGravityAcc_mean_Z | the mean of the values for this subject activity combination
tGravityAcc_std_X | the standard deviation of the values for this subject activity combination
tGravityAcc_std_Y | the standard deviation of the values for this subject activity combination
tGravityAcc_std_Z | the standard deviation of the values for this subject activity combination
tBodyAccJerk_mean_X | the mean of the values for this subject activity combination
tBodyAccJerk_mean_Y | the mean of the values for this subject activity combination
tBodyAccJerk_mean_Z | the mean of the values for this subject activity combination
tBodyAccJerk_std_X | the standard deviation of the values for this subject activity combination
tBodyAccJerk_std_Y | the standard deviation of the values for this subject activity combination
tBodyAccJerk_std_Z | the standard deviation of the values for this subject activity combination
tBodyGyro_mean_X | the mean of the values for this subject activity combination
tBodyGyro_mean_Y | the mean of the values for this subject activity combination
tBodyGyro_mean_Z | the mean of the values for this subject activity combination
tBodyGyro_std_X | the standard deviation of the values for this subject activity combination
tBodyGyro_std_Y | the standard deviation of the values for this subject activity combination
tBodyGyro_std_Z | the standard deviation of the values for this subject activity combination
tBodyGyroJerk_mean_X | the mean of the values for this subject activity combination
tBodyGyroJerk_mean_Y | the mean of the values for this subject activity combination
tBodyGyroJerk_mean_Z | the mean of the values for this subject activity combination
tBodyGyroJerk_std_X | the standard deviation of the values for this subject activity combination
tBodyGyroJerk_std_Y | the standard deviation of the values for this subject activity combination
tBodyGyroJerk_std_Z | the standard deviation of the values for this subject activity combination
tBodyAccMag_mean | the mean of the values for this subject activity combination
tBodyAccMag_std | the standard deviation of the values for this subject activity combination
tGravityAccMag_mean | the mean of the values for this subject activity combination
tGravityAccMag_std | the standard deviation of the values for this subject activity combination
tBodyAccJerkMag_mean | the mean of the values for this subject activity combination
tBodyAccJerkMag_std | the standard deviation of the values for this subject activity combination
tBodyGyroMag_mean | the mean of the values for this subject activity combination
tBodyGyroMag_std | the standard deviation of the values for this subject activity combination
tBodyGyroJerkMag_mean | the mean of the values for this subject activity combination
tBodyGyroJerkMag_std | the standard deviation of the values for this subject activity combination
fBodyAcc_mean_X | the mean of the values for this subject activity combination
fBodyAcc_mean_Y | the mean of the values for this subject activity combination
fBodyAcc_mean_Z | the mean of the values for this subject activity combination
fBodyAcc_std_X | the standard deviation of the values for this subject activity combination
fBodyAcc_std_Y | the standard deviation of the values for this subject activity combination
fBodyAcc_std_Z | the standard deviation of the values for this subject activity combination
fBodyAccJerk_mean_X | the mean of the values for this subject activity combination
fBodyAccJerk_mean_Y | the mean of the values for this subject activity combination
fBodyAccJerk_mean_Z | the mean of the values for this subject activity combination
fBodyAccJerk_std_X | the standard deviation of the values for this subject activity combination
fBodyAccJerk_std_Y | the standard deviation of the values for this subject activity combination
fBodyAccJerk_std_Z | the standard deviation of the values for this subject activity combination
fBodyGyro_mean_X | the mean of the values for this subject activity combination
fBodyGyro_mean_Y | the mean of the values for this subject activity combination
fBodyGyro_mean_Z | the mean of the values for this subject activity combination
fBodyGyro_std_X | the standard deviation of the values for this subject activity combination
fBodyGyro_std_Y | the standard deviation of the values for this subject activity combination
fBodyGyro_std_Z | the standard deviation of the values for this subject activity combination
fBodyAccMag_mean | the mean of the values for this subject activity combination
fBodyAccMag_std | the standard deviation of the values for this subject activity combination
fBodyBodyAccJerkMag_mean | the mean of the values for this subject activity combination
fBodyBodyAccJerkMag_std | the standard deviation of the values for this subject activity combination
fBodyBodyGyroMag_mean | the mean of the values for this subject activity combination
fBodyBodyGyroMag_std | the standard deviation of the values for this subject activity combination
fBodyBodyGyroJerkMag_mean | the mean of the values for this subject activity combination
fBodyBodyGyroJerkMag_std | the standard deviation of the values for this subject activity combination

### subjectActivity.txt

column name | description
--------------------------
subject | The number of the subject (1-30)
activity | The activity on of the following values: Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying
tBodyAcc_mean_X | the mean of the values for this subject activity combination
tBodyAcc_mean_Y | the mean of the values for this subject activity combination
tBodyAcc_mean_Z | the mean of the values for this subject activity combination
tBodyAcc_std_X | the standard deviation of the values for this subject activity combination
tBodyAcc_std_Y | the standard deviation of the values for this subject activity combination
tBodyAcc_std_Z | the standard deviation of the values for this subject activity combination
tGravityAcc_mean_X | the mean of the values for this subject activity combination
tGravityAcc_mean_Y | the mean of the values for this subject activity combination
tGravityAcc_mean_Z | the mean of the values for this subject activity combination
tGravityAcc_std_X | the standard deviation of the values for this subject activity combination
tGravityAcc_std_Y | the standard deviation of the values for this subject activity combination
tGravityAcc_std_Z | the standard deviation of the values for this subject activity combination
tBodyAccJerk_mean_X | the mean of the values for this subject activity combination
tBodyAccJerk_mean_Y | the mean of the values for this subject activity combination
tBodyAccJerk_mean_Z | the mean of the values for this subject activity combination
tBodyAccJerk_std_X | the standard deviation of the values for this subject activity combination
tBodyAccJerk_std_Y | the standard deviation of the values for this subject activity combination
tBodyAccJerk_std_Z | the standard deviation of the values for this subject activity combination
tBodyGyro_mean_X | the mean of the values for this subject activity combination
tBodyGyro_mean_Y | the mean of the values for this subject activity combination
tBodyGyro_mean_Z | the mean of the values for this subject activity combination
tBodyGyro_std_X | the standard deviation of the values for this subject activity combination
tBodyGyro_std_Y | the standard deviation of the values for this subject activity combination
tBodyGyro_std_Z | the standard deviation of the values for this subject activity combination
tBodyGyroJerk_mean_X | the mean of the values for this subject activity combination
tBodyGyroJerk_mean_Y | the mean of the values for this subject activity combination
tBodyGyroJerk_mean_Z | the mean of the values for this subject activity combination
tBodyGyroJerk_std_X | the standard deviation of the values for this subject activity combination
tBodyGyroJerk_std_Y | the standard deviation of the values for this subject activity combination
tBodyGyroJerk_std_Z | the standard deviation of the values for this subject activity combination
tBodyAccMag_mean | the mean of the values for this subject activity combination
tBodyAccMag_std | the standard deviation of the values for this subject activity combination
tGravityAccMag_mean | the mean of the values for this subject activity combination
tGravityAccMag_std | the standard deviation of the values for this subject activity combination
tBodyAccJerkMag_mean | the mean of the values for this subject activity combination
tBodyAccJerkMag_std | the standard deviation of the values for this subject activity combination
tBodyGyroMag_mean | the mean of the values for this subject activity combination
tBodyGyroMag_std | the standard deviation of the values for this subject activity combination
tBodyGyroJerkMag_mean | the mean of the values for this subject activity combination
tBodyGyroJerkMag_std | the standard deviation of the values for this subject activity combination
fBodyAcc_mean_X | the mean of the values for this subject activity combination
fBodyAcc_mean_Y | the mean of the values for this subject activity combination
fBodyAcc_mean_Z | the mean of the values for this subject activity combination
fBodyAcc_std_X | the standard deviation of the values for this subject activity combination
fBodyAcc_std_Y | the standard deviation of the values for this subject activity combination
fBodyAcc_std_Z | the standard deviation of the values for this subject activity combination
fBodyAccJerk_mean_X | the mean of the values for this subject activity combination
fBodyAccJerk_mean_Y | the mean of the values for this subject activity combination
fBodyAccJerk_mean_Z | the mean of the values for this subject activity combination
fBodyAccJerk_std_X | the standard deviation of the values for this subject activity combination
fBodyAccJerk_std_Y | the standard deviation of the values for this subject activity combination
fBodyAccJerk_std_Z | the standard deviation of the values for this subject activity combination
fBodyGyro_mean_X | the mean of the values for this subject activity combination
fBodyGyro_mean_Y | the mean of the values for this subject activity combination
fBodyGyro_mean_Z | the mean of the values for this subject activity combination
fBodyGyro_std_X | the standard deviation of the values for this subject activity combination
fBodyGyro_std_Y | the standard deviation of the values for this subject activity combination
fBodyGyro_std_Z | the standard deviation of the values for this subject activity combination
fBodyAccMag_mean | the mean of the values for this subject activity combination
fBodyAccMag_std | the standard deviation of the values for this subject activity combination
fBodyBodyAccJerkMag_mean | the mean of the values for this subject activity combination
fBodyBodyAccJerkMag_std | the standard deviation of the values for this subject activity combination
fBodyBodyGyroMag_mean | the mean of the values for this subject activity combination
fBodyBodyGyroMag_std | the standard deviation of the values for this subject activity combination
fBodyBodyGyroJerkMag_mean | the mean of the values for this subject activity combination
fBodyBodyGyroJerkMag_std | the standard deviation of the values for this subject activity combination
