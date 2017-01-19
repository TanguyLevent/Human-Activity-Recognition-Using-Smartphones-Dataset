#################################################################################################################################################################
##                        GETTING & CLEANING DATA by Jeff Leek, Brian Caffo, Roger D.Peng
##
##                                  Code programmed by Tanguy LEVENT
##                              On 18 January 2017 (my birthday by the way)
##
##
##
##                                           STATEMENT
##
## You should create one R script called run_analysis.R that does the following : 
##
## 1 - Merges the training and the test sets to create one data set.
## 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
## 3 - Uses descriptive activity names to name the activities in the data set
## 4 - Appropriately labels the data set with descriptive variable names.
## 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##
#################################################################################################################################################################
  
# Load the data files (.txt files) 

labels_activity = read.table("./UCI HAR Dataset/activity_labels.txt")
variables_name = read.table ("./UCI HAR Dataset/features.txt")
subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test = read.table("./UCI HAR Dataset/test/X_test.txt")
x_train = read.table("./UCI HAR Dataset/train/X_train.txt")
y_test = read.table("./UCI HAR Dataset/test/y_test.txt")
y_train = read.table("./UCI HAR Dataset/train/y_train.txt")

##          4 - Appropriately labels the data set with descriptive variable names.

colnames(labels_activity) <- c("ID", "Activity")
colnames(x_test) <- variables_name$V2
colnames(x_train) <- variables_name$V2
colnames(y_test) <- c("Result")
colnames(y_train) <- c("Result")
colnames(subject_test) <- c("Volonteer")
colnames(subject_train) <- c("Volonteer")

##          1 - Merges the training and the test sets to create one data set

global_dataset <- rbind(cbind(subject_test,y_test, x_test ), cbind(subject_train, y_train, x_train))


##          2 - Extracts only the measurements on the mean and standard deviation for each measurement.

mean_dataset <- sapply(global_dataset, mean)
std_dataset <- sapply(global_dataset, sd)

##          3 - Uses descriptive activity names to name the activities in the data set

global_dataset$Result <- factor(global_dataset$Result, levels = labels_activity$ID, labels = labels_activity$Activity)


##          5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(data.table)
tidy_global_dataset <- data.table(global_dataset)
tidy_global_dataset2<-tidy_global_dataset[,lapply(.SD,mean),by="Result,Volonteer"]
write.table(tidy_global_dataset2,file="tidy_dataset.csv", row.names = FALSE, sep = "\t")
