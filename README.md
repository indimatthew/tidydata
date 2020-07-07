README
================

## Tidy Data: UCI Human Activity Recognition Data Set

**Source: [UCI Human Activity Recognition Using Smartphones Data
Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)**

Data and original descriptions were obtained from the [UCI
website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## run\_analysis.R

The purpose of this script is to create a tidy dataset summarizing the
test data from the UCI Human Activity Recognition Using Smartphones Data
(above), resulting in a dataset with one row for each unique subject +
activity combination containing the average (mean) summaries of the
provided mean and standard deviation measurements in the source data.

Note that the paths set on lines 9-11 of the script assume that the UCI
HAR Dataset folder was downloaded from the link above and sits within
the working directory.

The script follows the following process:

### 1\. Merge test and train data into one dataset

1.  **Read in the feature\_info, activity, subject, and feature
    files**  
    a. Read in feature names from features.txt  
    b. Clean up feature names by removing parenthesis and other
    characters and store in a vector (featnames). This will be used for
    the column labels for both X\_test and X\_train data  
    c. Read in the activity labels from activity\_labels.txt. This will
    be mapped to the class activity values in the y\_test and y\_train
    data  
    d. Read in the subject files. This contains the subject ids that
    correspond to the observations in both the test and train datasets  
    e. Read in the test measurement data: X\_test.txt, X\_train f. Read
    in the activity class data: y\_test.txt, y\_train
2.  **Combine columns to create test and train datasets**  
    a. Merge the subject\_test (subject identification), X\_test
    (features), y\_test (activity) data by using cbind to create one
    dataset of test group records with columns from each of the above
    sets. Result is stored in a dataframe named test  
    b. Merge the subject\_train (subject identification), X\_train
    (features), y\_train (activity) data by using cbind to create one
    dataset of train group records with columns from each of the above
    sets. Result is stored in a dataframe named train c. *Note that the
    feature names from featnames above are used as column names*
    d. *Also note that the Inertial Signals data are not used for this
    process*
3.  **Merge test and train datasets to create one dataset** a. Merge the
    test and train dataframes created above into one dataframe by using
    rbind to bind the two dataframes by row. The result is stored in a
    dataframe called uci.

### 2\. Extract only the measurements on the mean and standard deviation for each measurement.

The variables containing mean and standard deviation measurments are
identified by using grep to search for patterns in the names. Only the
subject, activity, and measurement variables containing “mean” or “std”
are selected. The result is then passed to the following step using
chained commands.

### 3\. Use descriptive activity names to name the activities in the data set.

After selecting only the columns we are interested in, the English
description of the activity from activity\_labels read in step 1 are
mapped to the activity class values from the y\_test and y\_train data.
The result is stored in the uci dataframe, and includes a clearly
interpreted text value for each of the 6 possible activities.

### 4\. Appropriately label the data set with descriptive variable names

In step 2, the variable labels found in features.txt were stored in
featnames. This list was used as the column names when reading in the
X\_test and X\_train data, resulting in appropriately labeled data with
descriptive names for each variable. In addition, the subject ID and
activity (from the subject and y datasets) are also descriptively named
subject and activity, respectively. See the included codebook.md file
for a full list of variables.

### 5\. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject

The uci dataframe from step 4 is first grouped by subject and activity,
and then the mean of each measurement variable is calculated. The result
single dataframe called ucisummary that follows the following tidy data
principles as defined by Hadley Wickham’s paper in the Journal of
Statistical Software, “Tidy Data”
[Source](http://vita.had.co.nz/papers/tidy-data.pdf):

1.  Each variable forms a single column
2.  Each observation forms a single row
3.  Each type of observational unit forms a table

In this case, each observation is the unique combination of subject and
activity and is contained in one row. Each measurement variable, subject
id, and activity label are all contained in individual columns, with
only one value in each column per row.

To make it clear that the values contained in this final dataset are the
average (mean) of the mean and standard deviation measurements and not
the original values, as a final step the prefix “avg” is appended to
each of the measurement variable names.
