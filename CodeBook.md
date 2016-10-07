# Data Dictionary - Human Activity Recognition Using Smartphones Dataset - Getting and Cleaning Data Course from Coursera
This document has the description of two data sets corresponding to the capstone project for the course **Getting and Cleaning Data** offered for Johns Hopkins University in collaboration with Coursera.

Information about **measurements** was extracted from **UCI HAR Dataset/features_info.txt**.

This document is structured as follow. Beggin with the description about **tidy_set.csv** that correspond to the first step in the assignment. Later, this file cover the description about **mean_measurements_tidy_set.csv** that correspond to the last part of the assignment.

##tidy_set.csv
This dataset cover the instructions that follows:

+ Merges the training and the test sets to create one data set.
+ Extracts only the measurements on the mean and standard deviation for each measurement.
+ Uses descriptive activity names to name the activities in the data set
+ Appropriately labels the data set with descriptive variable names. 

###Identifier

* **Feature number**: 1.

* **Feature name**: subjectID.

* **Description**: identifier for the person who realize the action.

* **Type**: integer.

* **Range**: [1,30].

###Measurements

* **Feature numbers**: [2,67].

* **Description**: the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* **Feature names**:
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

* **Type**: float.

* **Range**: [-1,1].

* **Aditional information**: the set of variables that were estimated from these signals are: mean(): Mean value and std(): Standard deviation. Names of features came in the format **Signal+Mean|Std+Component**, as example: **tBodyAccMeanX**.

###Label

* **Feature number**: 68.

* **Description**: this column correspond to the label of each register, in this case, this column represents to the activity type that was performing each person.

* **Feature name**: activityType.

* **Type**: factor.

* **Range**: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

* **Aditional information**: this column came at the beggining in the format **1,2,3,4,5,6** where each number represents activities **WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING** one of the activities performed was the change of the type pf this column from integer to factor with a specific name for each activity.


##mean_measurements_tidy_set.csv
This dataset cover the instructions that follows:

+ From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

So from the previous data set, the data was grouped by **subjectID** and **activityType**. Later, the data was summarizing by mean each measurement. Therefore, the data in this data set is structured as follows:


###Identifier

* **Feature number**: 1.

* **Feature name**: subjectID.

* **Description**: identifier for the person who realize the action.

* **Type**: integer.

* **Range**: [1,30].

###Label

* **Feature number**: 68.

* **Description**: this column correspond to the label of each register, in this case, this column represents to the activity type that was performing each person.

* **Feature name**: activityType.

* **Type**: factor.

* **Range**: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

###Measurements

* **Feature numbers**: [2,67].

* **Description**: the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern: 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* **Feature names**:
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

* **Type**: float.

* **Range**: [-1,1].

* **Aditional information**: the set of variables that were estimated from these signals are: mean(): Mean value and std(): Standard deviation. Names of features came in the format **Signal+Mean|Std+Component**, as example: **tBodyAccMeanX**.
