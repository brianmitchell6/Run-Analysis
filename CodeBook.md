##Data Description
Data are mean values of raw data grouped by Subject and Activity.  The 86 columns of mean data can be interpreted according to the following notation:
<ul>
<li><b>t</b>:time domain signals</li>
<li><b>f</b>:frequency domain signals (obtained using Fast Fourier Transform)</li>
<li><b>Body</b>:body linear accelaration</li>
<li><b>Gravity</b>:gravity acceleration</li>
<li><b>Acc</b>:acceleration signal from accelerometer</li>
<li><b>Gyro</b>:gyroscopic signal from gyroscope</li>
<li><b>Jerk</b>:jerk signal derived in time from the body linear acceleration and angular velocity</li>
<li><b>Mag</b>:magnitude of signal calculated using Euclidean norm</li>
<li><b>x,y,z</b>:denote the three axial signals in the X, Y, and Z directions</li>
<li><b>mean</b>:the statistical mean of the data</li>
<li><b>std</b>:the standard deviation of the data</li>
</ul>
<ol>
<li>"Subject"</li>
Subjects are numbered 1 through 30
<li>"Activity"
    <ul>
    <li>WALKING</li>
    <li>WALKING_UPSTAIRS</li>
    <li>WALKING_DOWNSTAIRS</li>
    <li>SITTING</li>
    <li>STANDING</li>
    <li>LAYING</li>
    </ul> </li>
<li>"tBodyAcc-mean()-X"</li>
<li>"tBodyAcc-mean()-Y"</li>
<li>"tBodyAcc-mean()-Z"</li>
<li>"tGravityAcc-mean()-X"</li>
<li>"tGravityAcc-mean()-Y"</li>
<li>"tGravityAcc-mean()-Z"</li>
<li>"tBodyAccJerk-mean()-X"</li>
<li>"tBodyAccJerk-mean()-Y"</li>
<li>"tBodyAccJerk-mean()-Z"</li>
<li>"tBodyGyro-mean()-X"</li>
<li>"tBodyGyro-mean()-Y"</li>
<li>"tBodyGyro-mean()-Z"</li>
<li>"tBodyGyroJerk-mean()-X"</li>
<li>"tBodyGyroJerk-mean()-Y"</li>
<li>"tBodyGyroJerk-mean()-Z"</li>
<li>"tBodyAccMag-mean()"</li>
<li>"tGravityAccMag-mean()"</li>
<li>"tBodyAccJerkMag-mean()"</li>
<li>"tBodyGyroMag-mean()"</li>
<li>"tBodyGyroJerkMag-mean()"</li>
<li>"fBodyAcc-mean()-X"</li>
<li>"fBodyAcc-mean()-Y"</li>
<li>"fBodyAcc-mean()-Z"</li>
<li>"fBodyAcc-meanFreq()-X"</li>
<li>"fBodyAcc-meanFreq()-Y"</li>
<li>"fBodyAcc-meanFreq()-Z"</li>
<li>"fBodyAccJerk-mean()-X"</li>
<li>"fBodyAccJerk-mean()-Y"</li>
<li>"fBodyAccJerk-mean()-Z"</li>
<li>"fBodyAccJerk-meanFreq()-X"</li>
<li>"fBodyAccJerk-meanFreq()-Y"</li>
<li>"fBodyAccJerk-meanFreq()-Z"</li>
<li>"fBodyGyro-mean()-X"</li>
<li>"fBodyGyro-mean()-Y"</li>
<li>"fBodyGyro-mean()-Z"</li>
<li>"fBodyGyro-meanFreq()-X"</li>
<li>"fBodyGyro-meanFreq()-Y"</li>
<li>"fBodyGyro-meanFreq()-Z"</li>
<li>"fBodyAccMag-mean()"</li>
<li>"fBodyAccMag-meanFreq()"</li>
<li>"fBodyBodyAccJerkMag-mean()"</li>
<li>"fBodyBodyAccJerkMag-meanFreq()"</li>
<li>"fBodyBodyGyroMag-mean()"</li>
<li>"fBodyBodyGyroMag-meanFreq()"</li>
<li>"fBodyBodyGyroJerkMag-mean()"</li>
<li>"fBodyBodyGyroJerkMag-meanFreq()"</li>
<li>"angle(tBodyAccMean,gravity)"</li>
<li>"angle(tBodyAccJerkMean),gravityMean)"</li>
<li>"angle(tBodyGyroMean,gravityMean)"</li>
<li>"angle(tBodyGyroJerkMean,gravityMean)"</li>
<li>"angle(X,gravityMean)"</li>
<li>"angle(Y,gravityMean)"</li>
<li>"angle(Z,gravityMean)"</li>
<li>"tBodyAcc-std()-X"</li>
<li>"tBodyAcc-std()-Y"</li>
<li>"tBodyAcc-std()-Z"</li>
<li>"tGravityAcc-std()-X"</li>
<li>"tGravityAcc-std()-Y"</li>
<li>"tGravityAcc-std()-Z"</li>
<li>"tBodyAccJerk-std()-X"</li>
<li>"tBodyAccJerk-std()-Y"</li>
<li>"tBodyAccJerk-std()-Z"</li>
<li>"tBodyGyro-std()-X"</li>
<li>"tBodyGyro-std()-Y"</li>
<li>"tBodyGyro-std()-Z"</li>
<li>"tBodyGyroJerk-std()-X"</li>
<li>"tBodyGyroJerk-std()-Y"</li>
<li>"tBodyGyroJerk-std()-Z"</li>
<li>"tBodyAccMag-std()"</li>
<li>"tGravityAccMag-std()"</li>
<li>"tBodyAccJerkMag-std()"</li>
<li>"tBodyGyroMag-std()"</li>
<li>"tBodyGyroJerkMag-std()"</li>
<li>"fBodyAcc-std()-X"</li>
<li>"fBodyAcc-std()-Y"</li>
<li>"fBodyAcc-std()-Z"</li>
<li>"fBodyAccJerk-std()-X"</li>
<li>"fBodyAccJerk-std()-Y"</li>
<li>"fBodyAccJerk-std()-Z"</li>
<li>"fBodyGyro-std()-X"</li>
<li>"fBodyGyro-std()-Y"</li>
<li>"fBodyGyro-std()-Z"</li>
<li>"fBodyAccMag-std()"</li>
<li>"fBodyBodyAccJerkMag-std()"</li>
<li>"fBodyBodyGyroMag-std()"</li>
<li>"fBodyBodyGyroJerkMag-std()"</li>
</ol>

Data comes from the following study: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
