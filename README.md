# Getting-and-Cleaning-Data-Course-Project
This repository is in regards to the course project for 'Getting and Cleaning Data' course, Data Sciecne Specialization on Coursera, being offered by John Hopkins University.

## How to run the code

In the first line of the code, you can change the submission directory by changing the arguement to the setwd() command.
All the succeesing lines of code would run perfectly.

If there are any errors, it can only be due to the changes in the name of the directory or the permission granted by the administrator of the system.

The output is saved as a txt file in the working directory only.

## Meta data for the variables

There are 88 variables.

1 Subject_no - The code of the subject on whom the experiment was conducted. There are a total of 30 subjects in the entire experiment.

2 Acitvity_name - The activity the subject was performing, which was measured by the machine. Could be any one of the six - WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

3 - 88 <Machine reading variables> The output of the machine, depending on which attribute was measured. The method of taking the reading is described in the data set itself as -

FEATURE SELECTION 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
"

The names of the variables are as follows:

 [1] "tBodyAcc-mean-X"                      "tBodyAcc-mean-Y"                     
 [3] "tBodyAcc-mean-Z"                      "tBodyAcc-std-X"                      
 [5] "tBodyAcc-std-Y"                       "tBodyAcc-std-Z"                      
 [7] "tGravityAcc-mean-X"                   "tGravityAcc-mean-Y"                  
 [9] "tGravityAcc-mean-Z"                   "tGravityAcc-std-X"                   
[11] "tGravityAcc-std-Y"                    "tGravityAcc-std-Z"                   
[13] "tBodyAccJerk-mean-X"                  "tBodyAccJerk-mean-Y"                 
[15] "tBodyAccJerk-mean-Z"                  "tBodyAccJerk-std-X"                  
[17] "tBodyAccJerk-std-Y"                   "tBodyAccJerk-std-Z"                  
[19] "tBodyGyro-mean-X"                     "tBodyGyro-mean-Y"                    
[21] "tBodyGyro-mean-Z"                     "tBodyGyro-std-X"                     
[23] "tBodyGyro-std-Y"                      "tBodyGyro-std-Z"                     
[25] "tBodyGyroJerk-mean-X"                 "tBodyGyroJerk-mean-Y"                
[27] "tBodyGyroJerk-mean-Z"                 "tBodyGyroJerk-std-X"                 
[29] "tBodyGyroJerk-std-Y"                  "tBodyGyroJerk-std-Z"                 
[31] "tBodyAccMag-mean"                     "tBodyAccMag-std"                     
[33] "tGravityAccMag-mean"                  "tGravityAccMag-std"                  
[35] "tBodyAccJerkMag-mean"                 "tBodyAccJerkMag-std"                 
[37] "tBodyGyroMag-mean"                    "tBodyGyroMag-std"                    
[39] "tBodyGyroJerkMag-mean"                "tBodyGyroJerkMag-std"                
[41] "fBodyAcc-mean-X"                      "fBodyAcc-mean-Y"                     
[43] "fBodyAcc-mean-Z"                      "fBodyAcc-std-X"                      
[45] "fBodyAcc-std-Y"                       "fBodyAcc-std-Z"                      
[47] "fBodyAcc-meanFreq-X"                  "fBodyAcc-meanFreq-Y"                 
[49] "fBodyAcc-meanFreq-Z"                  "fBodyAccJerk-mean-X"                 
[51] "fBodyAccJerk-mean-Y"                  "fBodyAccJerk-mean-Z"                 
[53] "fBodyAccJerk-std-X"                   "fBodyAccJerk-std-Y"                  
[55] "fBodyAccJerk-std-Z"                   "fBodyAccJerk-meanFreq-X"             
[57] "fBodyAccJerk-meanFreq-Y"              "fBodyAccJerk-meanFreq-Z"             
[59] "fBodyGyro-mean-X"                     "fBodyGyro-mean-Y"                    
[61] "fBodyGyro-mean-Z"                     "fBodyGyro-std-X"                     
[63] "fBodyGyro-std-Y"                      "fBodyGyro-std-Z"                     
[65] "fBodyGyro-meanFreq-X"                 "fBodyGyro-meanFreq-Y"                
[67] "fBodyGyro-meanFreq-Z"                 "fBodyAccMag-mean"                    
[69] "fBodyAccMag-std"                      "fBodyAccMag-meanFreq"                
[71] "fBodyBodyAccJerkMag-mean"             "fBodyBodyAccJerkMag-std"             
[73] "fBodyBodyAccJerkMag-meanFreq"         "fBodyBodyGyroMag-mean"               
[75] "fBodyBodyGyroMag-std"                 "fBodyBodyGyroMag-meanFreq"           
[77] "fBodyBodyGyroJerkMag-mean"            "fBodyBodyGyroJerkMag-std"            
[79] "fBodyBodyGyroJerkMag-meanFreq"        "angle(tBodyAccMean,gravity)"         
[81] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[83] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                
[85] "angle(Y,gravityMean)"                 "angle(Z,gravityMean)" 

## Description of the code
St 1 Seting the working directory
St 2 Downloading the data into the zip file
St 3 Unzipping the file and storing all the variables in it
St 4 Reading in all the files of the dataset
St 5 Reading the list of features and the dictionary of activities 
St 6 Filtering the features to obtain only mean and std deviation features
St 7 Creating new data frames with only the mean and std deviation features
St 8 Creating the activity variable
St 9 Creating the two datasets, including the activity name and subject name
St 10 Setting the column names
St 11 Combinging the two dataframes and saving in a new .txt file

These are added as annotations in the file as well

In the final step, mean of the aggregate, according to subject number and activity name is taken.

