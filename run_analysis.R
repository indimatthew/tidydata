# run_analysis.R
# John's Hopkin's Getting and Cleaning Data: Week 4 Project
# Created by: Indi Matthew

# load libraries
library(tidyverse)

# Set path variables. This allows one small change if the folder is moved, rather than changing paths for each file

ucipath <- "UCI HAR Dataset"
testpath <- paste(ucipath, "test", sep="/")
trainpath <- paste(ucipath, "train", sep="/")

# Step one: Merge all test sets to create one dataset

# Read in feature names file
features <- read.table(paste(ucipath, "features.txt", sep="/"))

# Create a vector list of clean feature names: 
# removed () characters from feature names 
featnames <- str_remove_all(features[,2], "[[()]]") 

# Load Activity Labels
activity_labels <- read.table(paste(ucipath, "activity_labels.txt", sep="/"), stringsAsFactors = TRUE, col.names=c("code", "activity"))

# Read in train data: subject_train, X_train, y_train
# subject_train. note that the subject field is classed as character, as it is an ID and has no numerical meaning
subject_train <- read.table(paste(trainpath, "subject_train.txt", sep="/"), header=FALSE, col.names=c("subject"), colClasses = "character")
                           
#X_train and y_ttrain datasets
# Note that the cleaned values from the features.txt file are set as X_train column names 
X_train <- read.table(paste(trainpath, "X_train.txt", sep="/"), header = FALSE, col.names = featnames)
y_train <- read.table(paste(trainpath, "y_train.txt", sep="/"), header = FALSE, col.names = c("activity"))

# Read in test data: subject_test, X_test, y_test
# subject_test. note that the subject field is classed as character, as it is an ID and has no numerical meaning
subject_test <- read.table(paste(testpath, "subject_test.txt", sep="/"), header=FALSE, col.names=c("subject"), colClasses = "character")

#X_test and y_test datasets
# Note that the cleaned values from the features.txt file are set as X_test column names 
X_test <- read.table(paste(testpath, "X_test.txt", sep="/"), header = FALSE, col.names = featnames)
y_test <- read.table(paste(testpath, "y_test.txt", sep="/"), header = FALSE, col.names = c("activity"))


# Merge test and train datasets together.  
# Result is one dataframe with subject id, features (measurements), and activity for each subject
test <- cbind(subject_test, X_test, y_test)
train <- cbind(subject_train, X_train, y_train)

uci <- rbind(test, train)

# Step 2: Extract only the measurements on the mean and standard deviation for each measurement
# Step 3: Use descriptive activity names to name the activities in the data set

# These steps are achieved in the chained command below: 
# 1 Subset dataframe for only the columns we are interested in: Subject, Means, STDs, and Activity.  
# 2 Map English descriptions for activity from activity_labels to the activity values in the test dataframe
uci <- uci %>% 
  select(grep("mean|std|subject|activity", names(uci), ignore.case = TRUE)) %>%
  mutate(activity=activity_labels$activity[activity])

# Step 4: Create an independent tidy data set with the average of each variable for each activity and each subject
#  1. group test dataframe from step 3 above by subject and activity
#  2. calculate the mean of each feature
#  3. add prefix to each summarized variable 
ucisummary <- uci %>%
  group_by(subject, activity) %>%
  summarize_all(mean) %>% 
  rename_at(vars(tBodyAcc.mean.X:angleZ.gravityMean) ,function(x){paste0("avg.", x)})

                