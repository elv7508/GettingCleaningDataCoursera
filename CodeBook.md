---
title: "CodeBook"
output: html_document
---

## Experiment description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

## Variables

subjID --> ID of 30 participants, range 1 - 30

activityID --> 6 levels:
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING

## Features

Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz are captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer a-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyacceleration-XYZ and timeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerationJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerationMagnitude, timeGravityAccelerationMagnitude, timeBodyAccelerationJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcceleration-XYZ, frequencyBodyAccelerationJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccelerationJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAccelerometer-XYZ
timeGravityAccelerometer-XYZ
timeBodyAccelerometerJerk-XYZ
timeBodyGyroscope-XYZ
timeBodyGyroscopeJerk-XYZ
timeBodyAccelerometerMagnitude
timeGravityAccelerometerMagnitude
timeBodyAccelerometerJerkMagnitude
timeBodyGyroscopeMagnitude
timeBodyGyroscopeJerkMagnitude
frequencyBodyAccelerometer-XYZ
frequencyBodyAccelerometerJerk-XYZ
frequencyBodyGyroscope-XYZ
frequencyBodyAccelerometerMagnitude
frequencyBodyAccelerometerJerkMagnitude
frequencyBodyGyroscopeMagnitude
frequencyBodyGyroscopeJerkMagnitude

## Estimated variables

mean()
std()

## Tidy data structure

timeBodyAccelometer-mean()-X
timeBodyAccelometer-mean()-Y
timeBodyAccelometer-mean()-Z
timeBodyAccelometer-std()-X
timeBodyAccelometer-std()-Y
timeBodyAccelometer-std()-Z
timeGravityAccelometer-mean()-X
timeGravityAccelometer-mean()-Y
timeGravityAccelometer-mean()-Z
timeGravityAccelometer-std()-X
timeGravityAccelometer-std()-Y
timeGravityAccelometer-std()-Z
timeBodyAccelometerJerk-mean()-X
timeBodyAccelometerJerk-mean()-Y
timeBodyAccelometerJerk-mean()-Z
timeBodyAccelometerJerk-std()-X
timeBodyAccelometerJerk-std()-Y
timeBodyAccelometerJerk-std()-Z
timeBodyGyroscope-mean()-X
timeBodyGyroscope-mean()-Y
timeBodyGyroscope-mean()-Z
timeBodyGyroscope-std()-X
timeBodyGyroscope-std()-Y
timeBodyGyroscope-std()-Z
timeBodyGyroscopeJerk-mean()-X
timeBodyGyroscopeJerk-mean()-Y
timeBodyGyroscopeJerk-mean()-Z
timeBodyGyroscopeJerk-std()-X
timeBodyGyroscopeJerk-std()-Y
timeBodyGyroscopeJerk-std()-Z
timeBodyAccelometerMagnitude-mean()
timeBodyAccelometerMagnitude-std()
timeGravityAccelometerMagnitude-mean()
timeGravityAccelometerMagnitude-std()
timeBodyAccelometerJerkMagnitude-mean()
timeBodyAccelometerJerkMagnitude-std()
timeBodyGyroscopeMagnitude-mean()
timeBodyGyroscopeMagnitude-std()
timeBodyGyroscopeJerkMagnitude-mean()
timeBodyGyroscopeJerkMagnitude-std()
frequencyBodyAccelometer-mean()-X
frequencyBodyAccelometer-mean()-Y
frequencyBodyAccelometer-mean()-Z
frequencyBodyAccelometer-std()-X
frequencyBodyAccelometer-std()-Y
frequencyBodyAccelometer-std()-Z
frequencyBodyAccelometer-meanFreq()-X
frequencyBodyAccelometer-meanFreq()-Y
frequencyBodyAccelometer-meanFreq()-Z
frequencyBodyAccelometerJerk-mean()-X
frequencyBodyAccelometerJerk-mean()-Y
frequencyBodyAccelometerJerk-mean()-Z
frequencyBodyAccelometerJerk-std()-X
frequencyBodyAccelometerJerk-std()-Y
frequencyBodyAccelometerJerk-std()-Z
frequencyBodyAccelometerJerk-meanFreq()-X
frequencyBodyAccelometerJerk-meanFreq()-Y
frequencyBodyAccelometerJerk-meanFreq()-Z
frequencyBodyGyroscope-mean()-X
frequencyBodyGyroscope-mean()-Y
frequencyBodyGyroscope-mean()-Z
frequencyBodyGyroscope-std()-X
frequencyBodyGyroscope-std()-Y
frequencyBodyGyroscope-std()-Z
frequencyBodyGyroscope-meanFreq()-X
frequencyBodyGyroscope-meanFreq()-Y
frequencyBodyGyroscope-meanFreq()-Z
frequencyBodyAccelometerMagnitude-mean()
frequencyBodyAccelometerMagnitude-std()
frequencyBodyAccelometerMagnitude-meanFreq()
frequencyBodyAccelometerJerkMagnitude-mean()
frequencyBodyAccelometerJerkMagnitude-std()
frequencyBodyAccelometerJerkMagnitude-meanFreq()
frequencyBodyGyroscopeMagnitude-mean()
frequencyBodyGyroscopeMagnitude-std()
frequencyBodyGyroscopeMagnitude-meanFreq()
frequencyBodyGyroscopeJerkMagnitude-mean()
frequencyBodyGyroscopeJerkMagnitude-std()
frequencyBodyGyroscopeJerkMagnitude-meanFreq()
