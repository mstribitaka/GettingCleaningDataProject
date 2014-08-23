## Codebook for TidyData2.txt
### Produced via run_analysis.R for Getting & Cleaning Data project


#### Description of Data Collection 
##### (Taken from README.txt included in the data zip file:
##### https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Additional Notes:  

Data that was distributed via the above-mentioned files were merged, and particular columns selected, via the script run_analysis.R.  Please refer to the README.md file for more
information on that script.  


### Description of Variables in TidyData2.txt

(Please note that I tried, I *really* tried, to get this into a table format but it would not work.)

| Variable       	| Column Position  | 	Variable Description
|---------------------|----------------------|------------------------
|Subject  | 1		 | Subject (person) ID (between 1-30) |

<P>| Activity							| 2		| Describes what activity the subject was performing when data was taken
| tBodyAccmeanX					| 3		| The mean in the X-direction of the time domain signal of the body linear acceleration
| tBodyAccmeanY					| 4		| The mean in the Y-direction of the time domain signal of the body linear acceleration 
| tBodyAccmeanZ					| 5		| The mean in the Z-direction of the time domain signal of the body linear acceleration 
| tBodyAccstdX						| 6		| The standard deviation in the X-direction of the time domain signal of the body linear acceleration 
| tBodyAccstdY						| 7		| The standard deviation in the Y-direction of the time domain signal of the body linear acceleration 
| tBodyAccstdZ						| 8		| The standard deviation in the Z-direction of the time domain signal of the body linear acceleration 
| tGravityAccmeanX					| 9		| The mean in the X-direction of the time domain signal of the gravity acceleration 
| tGravityAccmeanY					| 10		| The mean in the Y-direction of the time domain signal of the gravity acceleration 
| tGravityAccmeanZ					| 11		| The mean in the Z-direction of the time domain signal of the gravity acceleration 
| tGravityAccstdX					| 12		| The standard deviation in the X-direction of the time domain signal of the gravity acceleration 
| tGravityAccstdY					| 13		| The standard deviation in the Y-direction of the time domain signal of the gravity acceleration 
| tGravityAccstdZ					| 14		| The standard deviation in the Z-direction of the time domain signal of the gravity acceleration 
| tBodyAccJerkmeanX				| 15		| The mean in the X-direction of the time domain signal of the body linear acceleration jerk signal 
| tBodyAccJerkmeanY"				| 16		| The mean in the Y-direction of the time domain signal of the body linear acceleration jerk signal 
| tBodyAccJerkmeanZ				| 17		| The mean in the Z-direction of the time domain signal of the body linear acceleration jerk signal 
| tBodyAccJerkstdX					| 18		| The standard deviation in the X-direction of the time domain signal of the body linear acceleration jerk signal 
| tBodyAccJerkstdY					| 19		| The standard deviation in the Y-direction of the time domain signal of the body linear acceleration jerk signal 
| tBodyAccJerkstdZ					| 20		| The standard deviation in the Z-direction of the time domain signal of the body linear acceleration jerk signal 
| tBodyGyromeanX					| 21		| The mean in the X-direction of the time domain signal of the body angular velocity 
| tBodyGyromeanY					| 22		| The mean in the Y-direction of the time domain signal of the body angular velocity 
| tBodyGyromeanZ					| 23		| The mean in the Z-direction of the time domain signal of the body angular velocity 
| tBodyGyrostdX					| 24		| The standard deviation in the X-direction of the time domain signal of the body angular velocity 
| tBodyGyrostdY					| 25		| The standard deviation in the Y-direction of the time domain signal of the body angular velocity 
| tBodyGyrostdZ					| 26		| The standard deviation in the Z-direction of the time domain signal of the body angular velocity 
| tBodyGyroJerkmeanX				| 27	| The mean in the X-direction of the time domain signal of the body angular velocity jerk signal 
| tBodyGyroJerkmeanY				| 28	| The mean in the Y-direction of the time domain signal of the body angular velocity jerk signal 
| tBodyGyroJerkmeanZ				| 29	| The mean in the Z-direction of the time domain signal of the body angular velocity jerk signal 
| tBodyGyroJerkstdX					| 30	| The standard deviation in the X-direction of the time domain signal of the body angular velocity jerk signal 
| tBodyGyroJerkstdY					| 31	| The standard deviation in the Y-direction of the time domain signal of the body angular velocity jerk signal 
| tBodyGyroJerkstdZ					| 32	| The standard deviation in the Z-direction of the time domain signal of the body angular velocity jerk signal 
| tBodyAccMagmean					| 33	| The mean of the time domain signal of the body linear acceleration magnitude
| tBodyAccMagstd					| 34	| The standard deviation of the time domain signal of the body linear acceleration magnitude
| tGravityAccMagmean				| 35	| The mean of the time domain signal of the gravity acceleration magnitude
| tGravityAccMagstd					| 36	| The standard deviation of the time domain signal of the gravity acceleration magnitude
| tBodyAccJerkMagmean				| 37	| The mean of the time domain signal of the body linear acceleration jerk signal magnitude
| tBodyAccJerkMagstd				| 38	| The standard deviation of the time domain signal of the body linear acceleration jerk signal magnitude
| tBodyGyroMagmean				| 39	| The mean of the time domain signal of the body angular velocity magnitude
| tBodyGyroMagstd					| 40	| The standard deviation of the time domain signal of the body angular velocity magnitude
| tBodyGyroJerkMagmean			| 41	| The mean of the time domain signal of the body angular velocity jerk signal magnitude
| tBodyGyroJerkMagstd				| 42	| The standard deviation of the time domain signal of the body angular velocity jerk signal magnitude
| fBodyAccmeanX					| 43	| The mean in the X-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccmeanY					| 44	| The mean in the Y-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccmeanZ					| 45	| The mean in the Z-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccstdX						| 46	| The standard deviation in the X-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccstdY						| 47	| The standard deviation in the Y-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccstdZ						| 48	| The standard deviation in the Z-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccmeanFreqX				| 49	| The mean frequency in the X-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccmeanFreqY				| 50	| The mean frequency in the Y-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccmeanFreqZ				| 51	| The mean frequency in the Z-direction of the frequency domain signal of the body linear acceleration 
| fBodyAccJerkmeanX				| 52	| The mean in the X-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkmeanY				| 53	| The mean in the Y-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkmeanZ				| 54	| The mean in the Z-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkstdX					| 55	| The standard deviation in the X-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkstdY					| 56	| The standard deviation in the Y-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkstdZ					| 57	| The standard deviation in the Z-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkmeanFreqX			| 58	| The mean frequency in the X-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkmeanFreqY			| 59	| The mean frequency in the Y-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyAccJerkmeanFreqZ			| 60	| The mean frequency in the Z-direction of the frequency domain signal of the body linear acceleration jerk signal 
| fBodyGyromeanX					| 61	| The mean in the X-direction of the frequency domain signal of the body angular velocity 
| fBodyGyromeanY					| 62	| The mean in the Y-direction of the frequency domain signal of the body angular velocity 
| fBodyGyromeanZ					| 63	| The mean in the Z-direction of the frequency domain signal of the body angular velocity 
| fBodyGyrostdX					| 64	| The standard deviation in the X-direction of the frequency domain signal of the body angular velocity 
| fBodyGyrostdY					| 65	| The standard deviation in the Y-direction of the frequency domain signal of the body angular velocity 
| fBodyGyrostdZ					| 66	| The standard deviation in the Z-direction of the frequency domain signal of the body angular velocity 
| fBodyGyromeanFreqX				| 67	| The mean frequency in the X-direction of the frequency domain signal of the body angular velocity 
| fBodyGyromeanFreqY				| 68	| The mean frequency in the Y-direction of the frequency domain signal of the body angular velocity 
| fBodyGyromeanFreqZ				| 69	| The mean frequency in the Z-direction of the frequency domain signal of the body angular velocity 
| fBodyAccMagmean					| 70	| The mean of the frequency domain signal of the body linear acceleration magnitude
| fBodyAccMagstd					| 71	| The standard deviation of the frequency domain signal of the body linear acceleration magnitude
| fBodyAccMagmeanFreq				| 72	| The mean frequency of the frequency domain signal of the body linear acceleration magnitude
| fBodyBodyAccJerkMagmean			| 73	| The mean of the frequency domain signal of the body/body linear acceleration jerk signal magnitude (is BodyBody a typo? It was not explained in the features_info.txt file.  Ditto for those below.) 
| fBodyBodyAccJerkMagstd			| 74	| The standard deviation of the frequency domain signal of the body/body linear acceleration jerk signal magnitude
| fBodyBodyAccJerkMagmeanFreq		| 75	| The mean frequency of the frequency domain signal of the body/body linear acceleration jerk signal magnitude
| fBodyBodyGyroMagmean			| 76	| The mean of the frequency domain signal of the body/body angular velocity magnitude
| fBodyBodyGyroMagstd 				| 77	| The standard deviation of the frequency domain signal of the body/body angular velocity magnitude
| fBodyBodyGyroMagmeanFreq		| 78	| The mean frequency of the frequency domain signal of the body/body angular velocity magnitude
| fBodyBodyGyroJerkMagmean		| 79	| The mean of the frequency domain signal of the body/body angular velocity jerk signal magnitude
| fBodyBodyGyroJerkMagstd			| 80	| The standard deviation of the frequency domain signal of the body/body angular velocity jerk signal magnitude
| fBodyBodyGyroJerkMagmeanFreq		| 81	| The mean frequency of the frequency domain signal of the body/body angular velocity jerk signal magnitude
| angletBodyAccMeangravity			| 82	| The angle between the mean time domain signal of the body linear acceleration and gravity signal
| angletBodyAccJerkMeangravityMean	| 83	| The angle between the mean time domain signal of the body linear acceleration jerk signal and mean gravity acceleration signal
| angletBodyGyroMeangravityMean		| 84	The angle between the mean time domain signal of the body angular velocity and mean gravity acceleration signal
| angletBodyGyroJerkMeangravityMean	| 85	| The angle between the mean time domain signal of the body angular velocity jerk signal and the mean gravity signal
| angleXgravityMean					| 86	| The angle between the X-direction vector and mean gravity acceleration
| angleYgravityMean					| 87	| The angle between the Y-direction vector and mean gravity acceleration
| angleZgravityMean					| 88	| The angle between the Z-direction vector and mean gravity acceleration
