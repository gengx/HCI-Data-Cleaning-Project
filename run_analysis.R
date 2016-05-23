#load test data set
test_x<-read.table("UCI HAR Dataset/test/x_test.txt")
test_y<-read.table("UCI HAR Dataset/test/y_test.txt")
test_sub<-read.table("UCI HAR Dataset/test/subject_test.txt")

#load features and activity labels
features<-read.table("UCI HAR Dataset/features.txt")
act_labels<-read.table("UCI HAR Dataset/activity_labels.txt")

#load training data set
train_x<-read.table("UCI HAR Dataset/train/x_train.txt")
train_y<-read.table("UCI HAR Dataset/train/y_train.txt")
train_sub<-read.table("UCI HAR Dataset/train/subject_train.txt")

#make data table for test and training data
dt_test=data.table(test_x,test_y)
dt_train=data.table(train_x,train_y)

#merge test and training data
dt<-rbind(dt_test,dt_train)

#make column names
headers<-append(as.character(features[,2]),"Activity")
colnames(dt)<-headers

#extract mean and std data
dt_sub<-subset(dt,select=grep("mean|std|Activity",headers,ignore.case=TRUE))


#combine the test subject data and the train subject data
sub<-rbind(test_sub,train_sub)
colnames(sub)<-"Subject"

#combine the subject data into the main data set
dt_tidy<-cbind(dt_sub,sub)


#load activity lables into a data table
dt_label<-data.table(act_labels)

#join the main data set with activity label table
dt_final<-merge(dt_tidy,dt_label,by.x="Activity",by.y="V1")
#remove the original activity column
dt_final[,1]<-NULL
#rename the activity label column
colnames(dt_final)[88]<-"Activity"

#rename the variables to be more descriptive names
names(dt_final)<-gsub("Acc", "Accelerometer", names(dt_final))
names(dt_final)<-gsub("Gyro", "Gyroscope", names(dt_final))
names(dt_final)<-gsub("Mag", "Magnitude", names(dt_final))
names(dt_final)<-gsub("^t", "Time", names(dt_final))
names(dt_final)<-gsub("^f", "Frequency", names(dt_final))
names(dt_final)<-gsub("tBody", "TimeBody", names(dt_final))

#write the full extracted tidy data to a file
write.table(dt_final,"tidy_data_full.txt",row.names=FALSE,col.names=TRUE,sep="\t",quote=FALSE)

#group the data set by Subject and Activity
mean_tidy<-aggregate(. ~Subject + Activity,dt_final,mean)

#sort the data by Subject and Activity
mean_tidy <- mean_tidy[order(mean_tidy$Subject,mean_tidy$Activity),]

#write the data set to a file
write.table(mean_tidy,file="mean_tidy.txt",row.names=FALSE)