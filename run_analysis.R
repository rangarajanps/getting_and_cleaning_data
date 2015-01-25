#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the 
#   average of each variable for each activity and each subject.

#Load all required libraries
library("data.table")
library("dplyr")

###################################
# Step 1 : Merges the training and the test sets to create one data set.
# This involves reading training and test data files, then combine and merge
###################################


##############################
# Read the training data files
##############################

# Reading the Subject ids in training file
subj1 <- read.table("subject_train.txt")
subj1_dt <- tbl_df(subj1)

# Reading the Activity ids in training file
actv1 <- read.table("y_train.txt")
actv1_dt <- tbl_df(actv1)

# Reading the observation file for training data set
obs1 <- read.table("x_train.txt")
obs1_dt <- tbl_df(obs1)


##########################
# Read the test data files
##########################

# Reading the Subject ids file for test
subj2 <- read.table("subject_test.txt")
subj2_dt <- tbl_df(subj2)

# Reading the Activity ids file for test
actv2 <- read.table("y_test.txt")
actv2_dt <- tbl_df(actv2)

# Reading the observation file for test
obs2 <- read.table("x_test.txt")
obs2_dt <- tbl_df(obs2)


###################################
# Merge the test and train data set
###################################

#Combining the 3 tables into 1 for training data
train_dt <- cbind(subj1_dt,actv1_dt,obs1_dt)

#Combining the 3 tables into 1 for test data
test_dt <- cbind(subj2_dt,actv2_dt,obs2_dt)

#Merge training and test data
merged_df <- rbind(train_dt,test_dt)


###################################
# Step 2 : Extracts only the measurements on the mean and standard deviation
###################################

# Read the feature label file
feature <- read.table("features.txt")
feature_dt <- tbl_df(feature)

# Creating a vector to format the feature labels
feature_lbl <- unlist(select(feature_dt, V2))

# Remove Special characters like (, ), - in the name
feature_lbl <- gsub("[[:punct:]]", "", feature_lbl)

# Making the list with unique names
feature_lbl <- make.names(feature_lbl, unique=TRUE)

# Creating label vector for all columns in merged data set
lbl_vtr <- c("Subject.Id","Activity.Id",feature_lbl)

# Assigning column names to merged data set
names(merged_df) <- lbl_vtr


##########################
## Finding out column indexes of interest i.e. mean and standard deviation
##########################

# Finding column names which contains mean
matches_mean <- grep("mean",colnames(merged_df))

# Finding column names which contains standard deviation
matches_std <- grep("std",colnames(merged_df))

# Combining both the list to get column names matching mean or std
matches_ms <- union(matches_mean, matches_std)

# Finding column names which contains meanFreq to remove it from combined list
# this is a derived value and need to be removed from the list
matches_meanF <- grep("meanFreq",colnames(merged_df))

# Removing column names which contains meanFreq from combined list
matches_ms <- setdiff(matches_ms, matches_meanF)

# Extracting only columns of interest
mean_std_dt <- select(merged_df,  c(1,2,matches_ms))


###################################
# Step 3 : Uses descriptive activity names to name the activities in the data set
###################################

# Read the Activity label file
actv_lbl <- read.table("activity_labels.txt")

# Replace Activity Id with Activity Labels read from the file
res_dt <- mutate(mean_std_dt, Activity.Id=actv_lbl[mean_std_dt$Activity.Id,2])


###################################
# Step 4 : Appropriately labels the data set with descriptive variable names.
###################################

# Using gsub substitute variable names with meaningful text
# Special characters in variable name is already removed
names(res_dt) <- gsub("^t","time.",names(res_dt))
names(res_dt) <- gsub("^f","freqDomSignal.",names(res_dt))
names(res_dt) <- gsub("std",".std-dev.",names(res_dt))
names(res_dt) <- gsub("mean",".mean.",names(res_dt))
names(res_dt) <- gsub("Body",".Body.",names(res_dt))
names(res_dt) <- gsub("Gravity",".Gravity.",names(res_dt))
names(res_dt) <- gsub("Acc",".Accelero.",names(res_dt))
names(res_dt) <- gsub("Gyro",".Gyro.",names(res_dt))
names(res_dt) <- gsub("..",".",names(res_dt),fixed=TRUE)
names(res_dt) <- gsub("Activity.Id","Activity.Name",names(res_dt),fixed=TRUE)
names(res_dt) <- gsub("$.","",names(res_dt))

###################################
# Step 5 : independent tidy data set with the average of 
#          each variable for each activity and each subject
###################################

# Group the data by Activity and Subject
grpd_dt <- group_by(res_dt,Activity.Name,Subject.Id)


# Call summarize with all variables
smry_each <- summarise_each(grpd_dt,funs(mean))
write.table(smry_each, file="output.txt",row.name=FALSE)
print(smry_each)
