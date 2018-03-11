if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

unzip(zipfile="./data/Dataset.zip",exdir="./data")

datapath <- file.path("./data" , "UCI HAR Dataset")

Feature_name <- read.table(file.path(datapath, "features.txt"),head=FALSE)
Activity_Labels <- read.table(file.path(datapath, "activity_labels.txt"),header = FALSE)

ActivityTest  <- read.table(file.path(datapath, "test" , "Y_test.txt" ),header = FALSE)
ActivityTrain <- read.table(file.path(datapath, "train", "Y_train.txt"),header = FALSE)
Activity<- rbind(ActivityTrain, ActivityTest)

SubjectTest  <- read.table(file.path(datapath, "test" , "subject_test.txt"),header = FALSE)
SubjectTrain <- read.table(file.path(datapath, "train", "subject_train.txt"),header = FALSE)
Subject <- rbind(SubjectTrain, SubjectTest)

FeaturesTest  <- read.table(file.path(datapath, "test" , "X_test.txt" ),header = FALSE)
FeaturesTrain <- read.table(file.path(datapath, "train", "X_train.txt"),header = FALSE)
Features<- rbind(FeaturesTrain, FeaturesTest)

names(Subject)<-c("subject")
names(Activity)<- c("activity")
names(Features)<- Feature_name$V2

Subj_Act_Combine <- cbind(Subject, Activity)
Combined_Data <- cbind(Features, Subj_Act_Combine)


mean_std_Features<-Feature_name$V2[grep("mean\\(\\)|std\\(\\)", Feature_name$V2)]
mean_std_Features<-as.character(mean_std_Features)
a<-c(mean_std_Features, "subject", "activity" )
Selected_Data<-subset(Combined_Data,select=a)

names(Selected_Data)<-gsub("^t", "time", names(Selected_Data))
names(Selected_Data)<-gsub("^f", "frequency", names(Selected_Data))
names(Selected_Data)<-gsub("Acc", "Accelerometer", names(Selected_Data))
names(Selected_Data)<-gsub("Gyro", "Gyroscope", names(Selected_Data))
names(Selected_Data)<-gsub("Mag", "Magnitude", names(Selected_Data))
names(Selected_Data)<-gsub("BodyBody", "Body", names(Selected_Data))

library(plyr);
clean_Data<-aggregate(. ~subject + activity, Selected_Data, mean)
clean_Data<-clean_Data[order(clean_Data$subject,clean_Data$activity),]
write.table(clean_Data, file = "tidydata.txt",row.name=FALSE)


