#Code Book
### Oryginal data
Result dataset is a transformation of data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of oryginal data is available at the site:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Steps
- oryginal data were merged into one dataset
- only the measurements on the mean and standard deviation for each measurement were left for further analysis
- descriptive activity names were used instead of numeric values
- new dataset were created with average of each measurement for each activity and each subject.

### Variables
Result file contain two factor variables
- subjectID -  an identifier of the subject who carried out the experiment
- activity -  activity label i.e. WALKING
The rest of variables are mean of columns from oryginal dataset for given subjectID and activity. 

#####Measurement column description:

**SOURCE:** https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in the file features_info.txt

Signal were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean() -  Mean value
std() - Standard deviation