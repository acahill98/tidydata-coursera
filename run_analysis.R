setwd("/Users/acahill98/Documents/Coursera Courses/Getting and Cleaning Data/Course Project") 
#Install plyr so I can use the join function later 
install.packages("plyr") 
library("plyr") 

# Read in training set/lables and test set/labels 
#X=set, Y=labels 

test.X<-read.table("test/X_test.txt") 
train.X<-read.table("train/X_train.txt") 

test.Y<-read.table("test/Y_test.txt") 
train.Y<-read.table("train/Y_train.txt") 

features<-read.table("features.txt") 

# Read in subject data for both train and test sets 
test.subject<-read.table("test/subject_test.txt") 
train.subject<-read.table("train/subject_train.txt") 


#1.Merges the training and the test sets to create one data set. 


# Merge both training and test sets. 
# Also include id of subject and whether record is from 
# training or test set 

full.train<-cbind(train.X, train.Y, train.subject ,c("train")) 
colnames(full.train)[562:564]<-c("Labels", "SubjectID", "Set") # Ensures col has same name in both 
full.test<-cbind(test.X, test.Y, test.subject ,c("test")) 
colnames(full.test)[562:564]<-c("Labels", "SubjectID", "Set") # Ensures col has same name in both 

#Combine test and train into one 
full.all<-rbind(full.train, full.test) 

# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 

#Extract out feature names and insert into full.all for later use with requirement 4.Appropriately labels the data set with descriptive variable names. 
features.names<-features$V2 
chars<-as.character(features.names) 
colnames(full.all)[1:561]<-chars 

#Identify features which are means and standard deviations 
means<-grep("-mean()",features$V2, fixed=TRUE) 
std<-grep("-std()",features$V2, fixed=TRUE) 

#Create a subset called extracted with only means and std dev. Also include labels, subject ID and Set 
indices<-c(means,std) 
extracted<-full.all[,c(indices,562:564)] 

# 3.Uses descriptive activity names to name the activities in the data set 

#Read in activity labels 
activity<-read.table("activity_labels.txt") 
colnames(activity)<-c("Labels", "Activity") 


#Create a merged dataset with activity names 
merged<-join(extracted, activity, by="Labels") 

# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

#Summarise by getting the mean of each measurement, by subjectID and Activity 
tidy<-ddply(merged, .(merged$SubjectID, merged$Activity), numcolwise(mean)) 

#Tidy the name of cols 1 and 2 
colnames(tidy)[1]<-"SubjectID" 
colnames(tidy)[2]<-"Activity" 

#Remove Labels variable 
tidy<-tidy[,1:68] 

#Extract out the tidy dataset 
write.table(tidy, file="tidy.txt")