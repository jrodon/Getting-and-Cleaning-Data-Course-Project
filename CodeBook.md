# Data dictionary - Averages of the Human Activity Recognition database

## Original data

Experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

For more information see http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones\#

## Modifications to the original data

The "run\_analysis.R" R script performs the following actions.

1.  Downloads and unzips the “Human Activity Recognition Using
    Smartphones” dataset v1.0 \[1\] into a folder *./data* in the current
    working directory.

2.  Loads the two main datasets contained in it (*./data/UCI HAR
    Dataset/test/X\_test.txt* and *./data/UCI
    HAR Dataset/train/X\_train.txt*) respectively into the **dataTest** and
    **dataTrain** data frames, assigning descriptive names to the
    variables it contains.

3.  Loads the *./data/UCI HAR Dataset/activity\_labels.txt*, *./data/UCI
    HAR Dataset/test/y\_test.txt*, and *./data/UCI HAR
    Dataset/train/y\_train.txt* files to determine the corresponding
    activities for each measurement contained in the **dataTest** and
    **dataTrain** data frames. Those activities are contained in the
    **activitiesTest** and **activitiesTrain** factor vectors.

4.  Loads the *./data/UCI HAR Dataset/test/subject\_test.txt* and
    *./data/UCI HAR Dataset/train/subject\_train.txt* files into the
    **subjectTest** and **subjectTrain** numeric vectors. These vectors
    contain the codes describing the (anonymous) subjects that took part
    in the experiment.

5.  Attaches the activities and subject vectors to the corresponding
    data frame into the **activity** and **subject** columns, as well as a
    marker indicating the provenance of the data frame ("test" or
    "subject", in the column "originalSample").

6.  Merges the data frames **dataTest** and **dataTrain** into the
    **humanActivityRecog** data frame.

7.  Creates the **extractHAR** data frame from the **humanActivityRecog**
    data frame. This new data frame extracts only the columns containing
    measurements on the mean and standard deviation for each register.

8.  Creates the **averagesHAR** data frame from the **extractHAR**
    data frame. This new data frame contains the average of each
    variable for each activity and each subject.

9.  Writes the **averagesHAR** data frame in the "averagesHAR.csv" file in
    the current working directory.

## Variables
Activity&ensp;&ensp;&ensp;&ensp;character<br>
&ensp;&ensp;&ensp;&ensp;Activity label<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;\[walking, walking\_upstairs, walking\_downstairs, sitting, standing, laying\] .Identifier of the activity performed while recording the signal<br>
<br>
Subject&ensp;&ensp;&ensp;&ensp; 1<br>
&ensp;&ensp;&ensp;&ensp;Identifier of the subject who carried out the experiment<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;1..30 .Unique identifier given to each subject<br>
<br>
MeanOfBodyAccMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the gravity component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the gravity component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the gravity component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the gravity component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the gravity component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the gravity component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the jerk of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the jerk of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the jerk of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the body component from the gyroscope signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the body component from the gyroscope signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the body component from the gyroscope signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the body component from the gyroscope signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the body component from the gyroscope signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the body component from the gyroscope signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the body component from the gyroscope signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the body component from the gyroscope signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the body component from the gyroscope signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the jerk of the body component from the gyroscope signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the jerk of the body component from the gyroscope signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the jerk of the body component from the gyroscope signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviation of the euclidean-norm magnitude of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the gravity component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfGravityAccMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviation of the euclidean-norm magnitude of the gravity component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the jerk of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyAccJerkMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviation of the euclidean-norm magnitude of the jerk of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the euclidean-norm magnitude of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the jerk of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfBodyGyroJerkMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the euclidean-norm magnitude of the jerk of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the Fast Fourier Transform of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the Fast Fourier Transform of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the Fast Fourier Transform of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccJerkMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the Fast Fourier Transform of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccJerkMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the Fast Fourier Transform of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccJerkMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the jerk of the Fast Fourier Transform of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccJerkStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the jerk of the body component from the accelerometer signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccJerkStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the jerk of the body component from the accelerometer signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccJerkStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the jerk of the body component from the accelerometer signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyGyroMeanXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the Fast Fourier Transform of the body component from the gyroscope signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyGyroMeanYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the Fast Fourier Transform of the body component from the gyroscope signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyGyroMeanZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the Fast Fourier Transform of the body component from the gyroscope signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyGyroStdXAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the body component from the gyroscope signal in the X axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyGyroStdYAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the body component from the gyroscope signal in the Y axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyGyroStdZAxis&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the Fast Fourier Transform of the body component from the gyroscope signal in the Z axis<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the Fast Fourier Transform of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyAccMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviation of the euclidean-norm magnitude of the Fast Fourier Transform of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyBodyAccJerkMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the Fast Fourier Transform of the jerk of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyBodyAccJerkMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviation of the euclidean-norm magnitude of the Fast Fourier Transform of the jerk of the body component from the accelerometer signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyBodyGyroMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the Fast Fourier Transform of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyBodyGyroMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the euclidean-norm magnitude of the Fast Fourier Transform of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyBodyGyroJerkMagMean&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the means of the euclidean-norm magnitude of the Fast Fourier Transform of the jerk of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>
MeanOfFFTBodyBodyGyroJerkMagStd&ensp;&ensp;&ensp;&ensp;  Double-precision float<br>
&ensp;&ensp;&ensp;&ensp;Mean of the standard deviations of the euclidean-norm magnitude of the Fast Fourier Transform of the jerk of the body component from the gyroscope signal<br>
&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;-1..1 .Normalized value<br>
<br>