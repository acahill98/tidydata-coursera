{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf190
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs20 \cf0 Human Activity Recognition Using Smartphones Dataset
\fs24  \
\

\fs20 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
\fs24 \
\

\fs20 The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
\fs24 \
\

\fs20 This Read Me document describes the steps to complete the project for Getting and Cleaning Data.
\fs24  \
\

\fs20 For script to run, you should first install and load the plyr package.
\fs24  \
\

\fs20 Initially, the script reads in the data from both the train and test datasets. Features are also read in to be used later to name the variables. Subject IDs are also read in.
\fs24  \
\

\fs20 Both training and test sets are combined to create one dataset which contains the data, labels and subject ID. I have also included a variable (which is not needed) to identify whether that record came from the training or test dataset. The resultant dataset is called full.all.
\fs24  \
\

\fs20 Next, the script extracts out feature names and inserts them into full.all for later use.
\fs24  \
\

\fs20 The following step identifies features which are means and standard deviations to produce a subset called extracted. 
\fs24 \
\

\fs20 The script then uses descriptive activity names to name the activities in the data set. It does this by reading in the activity labels from activity_labels.txt and merging them with the extracted dataset to produce a dataset called merged.
\fs24  \
\

\fs20 Finally, the script uses the ddply function (from plyr package) to generate the mean of each measurement, by subjectID and Activity.
\fs24  \
\

\fs20 This tidy dataset is then output to a text file called tidy.txt
\fs24  }