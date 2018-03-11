## Project Description:
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

## Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Attribute Information:
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Source Data:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data sets include:
- activity_labels.txt (read into variable Activity_Labels)
- features_info.txt (not read into run_analysis.R script)
- features.txt (read into variable Feature_name)
###### test set:
- subject_test.txt (read into variable SubjectTest)
- X_test.txt (read into variable FeaturesTest)
- y_test.txt (read into variable ActivityTest)
###### train set:
- subject_train.txt (read into variable SubjectTrain)
- X_train.txt (read into variable FeaturesTrain)	
- y_train.txt (read into variable ActivityTrain)

## Variables:
- Activity- Combined ActivityTest and ActivityTrain
- Subject- Combined SubjectTest and SubjectTrain
- Features- Combined FeaturesTest and FeaturesTrain
- Subj_Act_Combine- Combined Subject and Activity
- Combined_Data- Combined Subj_Act_Combine and Features
- mean_std_Features- Feature_name containing mean and standard deviation
- a- selected features of mean and standard deviation, subject, and activity
- Selected_Data- subset of Combined_Data with selected features in a
- clean_Data- independent tidy data set created from Selected_Data, with the average of each variable for each activity and each subject

