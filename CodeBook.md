{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf190
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs20 \cf0 tidy.txt contains 180 observations and 68 variables.
\fs24  \

\fs20 SubjectId \'a0 \'a0 \'a0 \'a0integer \'a0 \'a0 \'a0 \'a0ID number of each participant
\fs24  \

\fs20 Activity \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0 \'a0Factor \'a0 \'a0 \'a0 \'a06 level factor variable. Levels are laying, sitting, standing, walking, walking downstairs, walking upstairs
\fs24  \
\

\fs20 The remaining variables are integer variables.
\fs24  \
\

\fs20 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
\fs24 \
\

\fs20 Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
\fs24 \
\

\fs20 Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
\fs24 \
\

\fs20 These signals were used to estimate variables of the feature vector for each pattern: \'a0
\fs24  \

\fs20 '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
\fs24  \
\

\fs20 tBodyAcc-XYZ
\fs24  \

\fs20 tGravityAcc-XYZ
\fs24  \

\fs20 tBodyAccJerk-XYZ
\fs24  \

\fs20 tBodyGyro-XYZ
\fs24  \

\fs20 tBodyGyroJerk-XYZ
\fs24  \

\fs20 tBodyAccMag
\fs24  \

\fs20 tGravityAccMag
\fs24  \

\fs20 tBodyAccJerkMag
\fs24  \

\fs20 tBodyGyroMag
\fs24  \

\fs20 tBodyGyroJerkMag
\fs24  \

\fs20 fBodyAcc-XYZ
\fs24  \

\fs20 fBodyAccJerk-XYZ
\fs24  \

\fs20 fBodyGyro-XYZ
\fs24  \

\fs20 fBodyAccMag
\fs24  \

\fs20 fBodyAccJerkMag
\fs24  \

\fs20 fBodyGyroMag
\fs24  \

\fs20 fBodyGyroJerkMag
\fs24  \
\

\fs20 The set of variables that were estimated from these signals are the mean by each subject and activity of:
\fs24  \
\

\fs20 mean(): Mean value
\fs24  \

\fs20 std(): Standard deviation}