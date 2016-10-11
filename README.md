#Human Activity Recognition Using Smartphones Dataset

+ **Version**: Getting and Cleaning Data Course

+ **Author**: Deyban Pérez.

## Description

This dataset represents a subset from the original set **Human Activity Recognition Using Smartphones Dataset - Version 1.0**, that is inside the directory **UCI HAR Dataset**. 

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

## Content

+ **README.md**: explain the dataset and the relation between files.

+ **CodeBook.md**: explain the structure about data sets **tidy_set.txt** and **mean_measurements_tidy_set.txt** that are inside **Tidy_Data** directory.

+ **run_analysis.R**: a documented R script that performs ativities to accomplish the objectives for the process of extraction and cleaning the data.

+ **Tidy_Data**: a directory where the tidy sets were written.

+ **UCI HAR Dataset**: the original directory of **Human Activity Recognition Using Smartphones Dataset - Version 1.0**. This was included in case you want more documentation or perform another activities using this data set.