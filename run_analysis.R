#load csv files
test<-read.table("getdata/test/X_test.txt")
train<-read.table("getdata/train/X_train.txt")
sbjTest<- read.table("getdata/test/subject_test.txt")
sbjTrain<- read.table("getdata/train/subject_train.txt")
lblTest<- read.table("getdata/test/y_test.txt")
lblTrain<- read.table("getdata/train/y_train.txt")
features <- read.table("getdata/features.txt")
labels <- read.table("getdata/activity_labels.txt")

#merge datasets
all<- rbind(cbind(sbjTest, lblTest, test),cbind(sbjTrain, lblTrain, train))
#assign colnames
colnames(all)<- c("subjectID", "activity", as.character(features$V2))
#use activity names instead of IDs
all$activity<- factor(all$activity, levels=labels$V1, labels=labels$V2)
#choose only the measurements on the mean and standard deviation for each measurement
a<-colnames(all)
small<- all[ ,grep('subjectID|activity|mean\\(|std\\(', a)]
#data set with the average of each variable for each activity and each subject
smry_set<-aggregate(small[,3:68], list(subjectID=small$subjectID, activity=small$activity), mean)
#save result table
write.table(smry_set, "getdata/smry_set.txt", row.name=F)






