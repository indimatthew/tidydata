Codebook
================

## UCI Human Activity Recognition Using Smartphones Data Set

**Source: [UCI Human Activity Recognition Using Smartphones Data
Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)**

Data and original descriptions were obtained from the [UCI
website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The datasets include provide 3-axial linear acceleration and 3-axial
angular velocity signals from 30 subjects, as captured from the Samsung
Galaxy S II’s built-in accelerometer and gyroscope. The subjects
performed six activities (WALKING, WALKING\_UPSTAIRS,
WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING).

For this exercise, I merged the following data:

  - *subject\_test.txt:* contains the subject identifier of each person
    within the test group
  - *X\_test, X\_train:* the features (ie, the accelerometer and
    gyroscope measurements, and their derived measures)for the test and
    train groups, respectively
  - *y\_test, y\_train:* the activity being performed for the test and
    train groups, coded as 1 - 6
  - *activity\_labels.txt:* maps the activity class with the English
    text label

Activity labels were mapped to the class value provided by the the
y\_test.txt and y\_train.txt files. From there, features were filtered
to include only mean and standard deviation (std) measures. Each row in
this dataframe represents a single observation of an individual for a
given activity.

The result is a single dataset with subject id, activity label, and mean
and standard deviations values for the all subjects. The table below
provides a data dictionary of each variable in this combined data, the
description as found in the accompanying files provided by UCI, the
valid value range, and datatype.

Note that the features are normalized and bounded within a range of
\[-1, 1\], and subject ID’s range from 1-30.

| Variable Number | Variable Name                      | Description                                                                                                   | Data Type |                                  Value Range                                   | Units |
| :-------------- | :--------------------------------- | :------------------------------------------------------------------------------------------------------------ | :-------: | :----------------------------------------------------------------------------: | :---: |
| 1               | subject                            | Subject ID that performed the activity for each window sample                                                 |   char    |                                    \[1-30\]                                    |  NA   |
| 2               | tBodyAcc.mean.X                    | Mean time domain accelerometer body acceleration signal value in the X direction                              |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 3               | tBodyAcc.mean.Y                    | Mean time domain accelerometer body acceleration signal value in the Y direction                              |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 4               | tBodyAcc.mean.Z                    | Mean time domain accelerometer body acceleration signal value in the Z direction                              |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 5               | tBodyAcc.std.X                     | Standard deviation of the time domain accelerometer body acceleration signal value in the X direction         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 6               | tBodyAcc.std.Y                     | Standard deviation of the time domain accelerometer body acceleration signal value in the Y direction         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 7               | tBodyAcc.std.Z                     | Standard deviation of the time domain accelerometer body acceleration signal value in the Z direction         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 8               | tGravityAcc.mean.X                 | Mean time domain accelerometer gravity acceleration signal value in the X direction                           |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 9               | tGravityAcc.mean.Y                 | Mean time domain accelerometer gravity acceleration signal value in the Y direction                           |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 10              | tGravityAcc.mean.Z                 | Mean time domain accelerometer gravity acceleration signal value in the Z direction                           |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 11              | tGravityAcc.std.X                  | Standard deviation of the time domain accelerometer gravity acceleration signal value in the X direction      |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 12              | tGravityAcc.std.Y                  | Standard deviation of the time domain accelerometer gravity acceleration signal value in the Y direction      |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 13              | tGravityAcc.std.Z                  | Standard deviation of the time domain accelerometer gravity acceleration signal value in the Z direction      |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 14              | tBodyAccJerk.mean.X                | Mean time domain accelerometer body acceleration jerk signal value in the X direction                         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 15              | tBodyAccJerk.mean.Y                | Mean time domain accelerometer body acceleration jerk signal value in the Y direction                         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 16              | tBodyAccJerk.mean.Z                | Mean time domain accelerometer body acceleration jerk signal value in the Z direction                         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 17              | tBodyAccJerk.std.X                 | Standard deviation of the time domain accelerometer body acceleration jerk signal value in the X direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 18              | tBodyAccJerk.std.Y                 | Standard deviation of the time domain accelerometer body acceleration jerk signal value in the Y direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 19              | tBodyAccJerk.std.Z                 | Standard deviation of the time domain accelerometer body acceleration jerk signal value in the Y direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 20              | tBodyGyro.mean.X                   | Mean time domain gyroscope body acceleration jerk signal value in the X direction                             |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 21              | tBodyGyro.mean.Y                   | Mean time domain gyroscope body acceleration jerk signal value in the Y direction                             |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 22              | tBodyGyro.mean.Z                   | Mean time domain gyroscope body acceleration jerk signal value in the Z direction                             |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 23              | tBodyGyro.std.X                    | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the X direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 24              | tBodyGyro.std.Y                    | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the Y direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 25              | tBodyGyro.std.Z                    | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the Y direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 26              | tBodyGyroJerk.mean.X               | Mean time domain gyroscope body acceleration jerk signal value in the X direction                             |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 27              | tBodyGyroJerk.mean.Y               | Mean time domain gyroscope body acceleration jerk signal value in the Y direction                             |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 28              | tBodyGyroJerk.mean.Z               | Mean time domain gyroscope body acceleration jerk signal value in the Z direction                             |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 29              | tBodyGyroJerk.std.X                | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the X direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 30              | tBodyGyroJerk.std.Y                | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the Y direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 31              | tBodyGyroJerk.std.Z                | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the Z direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 32              | tBodyAccMag.mean                   | Mean time domain accelerometer body acceleration magnitude                                                    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 33              | tBodyAccMag.std                    | Standard deviation of the time domain accelerometer body acceleration magnitude                               |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 34              | tGravityAccMag.mean                | Mean time domain accelerometer gravity acceleration magnitude                                                 |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 35              | tGravityAccMag.std                 | Standard deviation of the time domain accelerometer gravity acceleration magnitude                            |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 36              | tBodyAccJerkMag.mean               | Mean time domain accelerometer body acceleration jerk magnitude                                               |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 37              | tBodyAccJerkMag.std                | Standard deviation time domain accelerometer body acceleration jerk magnitude                                 |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 38              | tBodyGyroMag.mean                  | Mean time domain gyroscope body acceleration magnitude                                                        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 39              | tBodyGyroMag.std                   | Standard deviation time domain gyroscope body acceleration magnitude                                          |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 40              | tBodyGyroJerkMag.mean              | Mean time domain gyroscope body acceleration jerk signal magnitude                                            |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 41              | tBodyGyroJerkMag.std               | Standard deviation of the time domain gyroscope body acceleration jerk signal magnitude                       |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 42              | fBodyAcc.mean.X                    | Mean frequency domain accelerometer body acceleration signal value in the X direction                         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 43              | fBodyAcc.mean.Y                    | Mean frequency domain accelerometer body acceleration signal value in the Y direction                         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 44              | fBodyAcc.mean.Z                    | Mean frequency domain accelerometer body acceleration signal value in the Z direction                         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 45              | fBodyAcc.std.X                     | Standard deviation of the frequency domain accelerometer body acceleration signal value in the X direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 46              | fBodyAcc.std.Y                     | Standard deviation of the frequency domain accelerometer body acceleration signal value in the Y direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 47              | fBodyAcc.std.Z                     | Standard deviation of the frequency domain accelerometer body acceleration signal value in the Z direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 48              | fBodyAcc.meanFreq.X                | Weighted average of the frequency domain accelerometer body acceleration signal value in the X direction      |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 49              | fBodyAcc.meanFreq.Y                | Weighted average of the frequency domain accelerometer body acceleration signal value in the Y direction      |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 50              | fBodyAcc.meanFreq.Z                | Weighted average of the frequency domain accelerometer body acceleration signal value in the Z direction      |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 51              | fBodyAccJerk.mean.X                | Mean frequency domain accelerometer body acceleration jerk signal value in the X direction                    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 52              | fBodyAccJerk.mean.Y                | Mean frequency domain accelerometer body acceleration jerk signal value in the Y direction                    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 53              | fBodyAccJerk.mean.Z                | Mean frequency domain accelerometer body acceleration jerk signal value in the Y direction                    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 54              | fBodyAccJerk.std.X                 | Standard deviation of the time domain accelerometer body acceleration jerk signal value in the X direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 55              | fBodyAccJerk.std.Y                 | Standard deviation of the time domain accelerometer body acceleration jerk signal value in the Y direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 56              | fBodyAccJerk.std.Z                 | Standard deviation of the time domain accelerometer body acceleration jerk signal value in the Z direction    |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 57              | fBodyAccJerk.meanFreq.X            | Weighted average of the frequency domain accelerometer body acceleration jerk signal value in the X direction |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 58              | fBodyAccJerk.meanFreq.Y            | Weighted average of the frequency domain accelerometer body acceleration jerk signal value in the Y direction |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 59              | fBodyAccJerk.meanFreq.Z            | Weighted average of the frequency domain accelerometer body acceleration jerk signal value in the Z direction |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 60              | fBodyGyro.mean.X                   | Mean frequency domain gyroscope body acceleration jerk signal value in the X direction                        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 61              | fBodyGyro.mean.Y                   | Mean frequency domain gyroscope body acceleration jerk signal value in the Y direction                        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 62              | fBodyGyro.mean.Z                   | Mean frequency domain gyroscope body acceleration jerk signal value in the Z direction                        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 63              | fBodyGyro.std.X                    | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the X direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 64              | fBodyGyro.std.Y                    | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the Y direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 65              | fBodyGyro.std.Z                    | Standard deviation of the time domain gyroscope body acceleration jerk signal value in the Z direction        |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 66              | fBodyGyro.meanFreq.X               | Weighted average of the frequency domain gyroscope body acceleration jerk signal value in the X direction     |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 67              | fBodyGyro.meanFreq.Y               | Weighted average of the frequency domain gyroscope body acceleration jerk signal value in the Y direction     |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 68              | fBodyGyro.meanFreq.Z               | Weighted average of the frequency domain gyroscope body acceleration jerk signal value in the Z direction     |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 69              | fBodyAccMag.mean                   | Mean frequency domain accelerometer body acceleration magnitude                                               |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 70              | fBodyAccMag.std                    | Standard deviation of the frequency domain accelerometer body acceleration magnitude                          |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 71              | fBodyAccMag.meanFreq               | Weighted average of the frequency domain accelerometer body acceleration magnitude                            |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 72              | fBodyBodyAccJerkMag.mean           | Mean frequency domain accelerometer body acceleration jerk magnitude                                          |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 73              | fBodyBodyAccJerkMag.std            | Standard deviation of the frequency domain accelerometer body acceleration jerk magnitude                     |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 74              | fBodyBodyAccJerkMag.meanFreq       | Weighted average of the frequency domain accelerometer body acceleration jerk magnitude                       |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 75              | fBodyBodyGyroMag.mean              | Mean frequency domain gyroscope body acceleration magnitude                                                   |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 76              | fBodyBodyGyroMag.std               | Standard deviation of the frequency domain gyroscope body acceleration magnitude                              |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 77              | fBodyBodyGyroMag.meanFreq          | Weighted average of the frequency domain gyroscope body acceleration magnitude                                |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 78              | fBodyBodyGyroJerkMag.mean          | Mean frequency domain gyroscope body acceleration jerk magnitude                                              |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 79              | fBodyBodyGyroJerkMag.std           | Standard deviation of the frequency domain gyroscope body acceleration jerk magnitude                         |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 80              | fBodyBodyGyroJerkMag.meanFreq      | Weighted average of the frequency domain gyroscope body acceleration jerk magnitude                           |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 81              | angletBodyAccMean.gravity          | Mean angle between tBodyAccMean and gravityMean                                                               |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 82              | angletBodyAccJerkMean.gravityMean  | Mean angle between tBodyAccJerkMean and gravityMean                                                           |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 83              | angletBodyGyroMean.gravityMean     | Mean angle between tBodyGyroMean and gravityMean                                                              |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 84              | angletBodyGyroJerkMean.gravityMean | Mean angle between tBodyGyroJerkMean and gravityMean                                                          |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 85              | angleX.gravityMean                 | Mean gravityMean angle in the X direction                                                                     |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 86              | angleY.gravityMean                 | Mean gravityMean angle in the Y direction                                                                     |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 87              | angleZ.gravityMean                 | Mean gravityMean angle in the Z direction                                                                     |   float   |                                   \[-1 - 1\]                                   |  Hz   |
| 88              | activity                           | Activity label                                                                                                |  factor   | WALKING , WALKING\_UPSTAIRS , WALKING\_DOWNSTAIRS, SITTING , STANDING , LAYING |  NA   |

UCI Human Activity Recognition Test Set Variables

## Summary Data

The mean and standard deviation of each measurement listed in the table
above was calculated for each unique subject and activity combination.
The result is a tidy dataset summarized by subject id and activity, with
an average of each measurement listed in the table above.

  - *test\_summary.csv:* file containing the summarized measurements by
    subject ID and activity label
  - *variables:*
      - subject: test subject ID
      - activity: activity label
      - avg.**var**: mean of each feature measurement in the table above
        across subject and activity. See previous table for variable
        description and units

See the README.md file located in this repo for the detailed description
of the process flow, data used, and output.

For further details on the original experiment and data, please see the
accompanying documents provided by the [UCI
website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
