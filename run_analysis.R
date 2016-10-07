#Cleaning environment
rm(list = ls())

#Loading required package
library(dplyr)

#Reading label names
feature.names = read.csv("UCI HAR Dataset/features.txt",
                         sep = "",
                         header = FALSE,
                         colClasses = c("NULL", NA),
                         col.names = c("","FeatureNames"),
                         stringsAsFactors = FALSE)

#Transforming names into a vector
feature.names = as.vector(feature.names$FeatureNames)

###########################################################
#Working with training set                                #
###########################################################

#Reading training set predictors
training.set = read.csv("UCI HAR Dataset/train/X_train.txt",
                      sep = "",
                      header = FALSE,
                      col.names = feature.names)

#Transforming data frame into table data frame from dplyr
training.set = tbl_df(training.set)

#Filtering columns mean() and std() from measures
training.set = training.set[,grep("mean\\(|std\\(", feature.names)]

#Reading and adding labels for registers 
training.set["activityType"] = read.csv("UCI HAR Dataset/train/y_train.txt",
                                      sep = "",
                                      header = FALSE,
                                      stringsAsFactors = FALSE)

#Reading subjects and adding it to the training set
training.set["subjectID"] = read.csv(file = "UCI HAR Dataset/train/subject_train.txt",
                                   sep = "",
                                   header = FALSE)

#Putting subject into first place
training.set = select(training.set,68, 1:67)

###########################################################
#Working with testing set                                #
###########################################################

#Reading training set predictors
testing.set = read.csv("UCI HAR Dataset/test/X_test.txt",
                        sep = "",
                        header = FALSE,
                        col.names = feature.names)

#Transforming data frame into table data frame from dplyr
testing.set = tbl_df(testing.set)

#Filtering columns mean() and std() from measures
testing.set = testing.set[,grep("mean\\(|std\\(", feature.names)]

#Reading and adding labels for registers 
testing.set["activityType"] = read.csv("UCI HAR Dataset/test/y_test.txt",
                                        sep = "",
                                        header = FALSE,
                                       stringsAsFactors = FALSE)

#Reading subjects and adding it to the training set
testing.set["subjectID"] = read.csv(file = "UCI HAR Dataset/test/subject_test.txt",
                                     sep = "",
                                     header = FALSE)

#Putting subject into first place
testing.set = select(testing.set,68, 1:67)

###########################################################
#Working with complete set                                #
###########################################################

#Merging sets
tidy.set = rbind(training.set, testing.set)
tidy.set = tbl_df(tidy.set)

#Ordering new set
tidy.set = arrange(tidy.set, subjectID)

#Assigning descriptive names to the acctivities
tidy.set$activityType[tidy.set$activityType == 1] = "WALKING"
tidy.set$activityType[tidy.set$activityType == 2] = "WALKING_UPSTAIRS"
tidy.set$activityType[tidy.set$activityType == 3] = "WALKING_DOWNSTAIRS"
tidy.set$activityType[tidy.set$activityType == 4] = "SITTING"
tidy.set$activityType[tidy.set$activityType == 5] = "STANDING"
tidy.set$activityType[tidy.set$activityType == 6] = "LAYING"

#Assigning names to columns
colnames(tidy.set) = c("subjectID","tBodyAccMeanX", "tBodyAccMeanY", "tBodyAccMeanZ",
                       "tBodyAccStdX", "tBodyAccStdY", "tBodyAccStdZ",
                       "tGravityAccMeanX", "tGravityAccMeanY", "tGravityAccMeanZ",
                       "tGravityAccStdX", "tGravityAccStdY", "tGravityAccStdZ",
                       "tBodyAccJerkMeanX", "tBodyAccJerkMeanY", "tBodyAccJerkMeanZ",
                       "tBodyAccJerkStdX", "tBodyAccJerkStdY", "tBodyAccJerkStdZ",
                       "tBodyGyroMeanX", "tBodyGyroMeanY", "tBodyGyroMeanZ",
                       "tBodyGyroStdX", "tBodyGyroStdY", "tBodyGyroStdZ",
                       "tBodyGyroJerkMeanX", "tBodyGyroJerkMeanY", "tBodyGyroJerkMeanZ",
                       "tBodyGyroJerkStdX", "tBodyGyroJerkStdY", "tBodyGyroJerkStdZ",
                       "tBodyAccMagMean", "tBodyAccMagStd",
                       "tGravityAccMagMean", "tGravityAccMagStd",
                       "tBodyAccJerkMagMean", "tBodyAccJerkMagStd",
                       "tBodyGyroMagMean", "tBodyGyroMagStd",
                       "tBodyGyroJerkMagMean", "tBodyGyroJerkMagStd",
                       "fBodyAccMeanX", "fBodyAccMeanY", "fBodyAccMeanZ",
                       "fBodyAccStdX", "fBodyAccStdY", "fBodyAccStdZ",
                       "fBodyAccJerkMeanX", "fBodyAccJerkMeanY", "fBodyAccJerkMeanZ",
                       "fBodyAccJerkStdX", "fBodyAccJerkStdY", "fBodyAccJerkStdZ",
                       "fBodyGyroMeanX", "fBodyGyroMeanY", "fBodyGyroMeanZ",
                       "fBodyGyroStdX", "fBodyGyroStdY", "fBodyGyroStdZ",
                       "fBodyAccMagMean", "fBodyAccMagStd",
                       "fBodyBodyAccJerkMagMean", "fBodyBodyAccJerkMagStd",
                       "fBodyBodyGyroMagMean", "fBodyBodyGyroMagStd",
                       "fBodyBodyGyroJerkMagMean", "fBodyBodyGyroJerkMagStd",
                       "activityType")

#Grouping data by subjectID and activityType
new.data = group_by(tidy.set, subjectID, activityType)
#Summarizing data with the mean of each component
new.data = summarise_each(new.data, funs(mean))

if(!dir.exists("Tidy_Data"))
  dir.create("Tidy_Data")

write.csv(tidy.set, "Tidy_Data/tidy_set.csv", row.names = FALSE)
write.csv(new.data, "Tidy_Data/mean_measurements_tidy_set.csv", row.names = FALSE)