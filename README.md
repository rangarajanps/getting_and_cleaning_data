Following are the steps involved in processing the data to create the tidy data
===============================================================================



Step 1 : Merges the training and the test sets to create one data set.
----------------------------------------------------------------------


This involves reading training and test data files, then combine and merge

1. Read the training data files
* subject_train.txt <p>- contains subject ids</p>
* y_train.txt       <p>- contains Activity ids</p>
* x_train.txt       <p>- contains measurements</p>

2. Read the test data files
* subject_test.txt <p>- contains subject ids</p>
* y_test.txt       <p>- contains Activity ids</p>
* x_test.txt       <p>- contains measurements</p>

3. Merge the test and train data set
* Combine the 3 tables into 1 for training data using cbind
* Combine the 3 tables into 1 for test data using cbind
* Merge training and test data into 1 data set using rbind


Step 2 : Extracts only the measurements on the mean and standard deviation
--------------------------------------------------------------------------

A. Create the column name list

1. Read the feature label file
2. Create a vector to format the feature labels
3. Remove Special characters like (, ), - in the name using gsub
4. Making the list with unique names
5. Create label vector for all columns in merged data set and set the first 2 columns to Subject.Id,"Activity.Id"

B. Assign the created column names to merged data set

C. Find out column indexes of interest i.e. mean and standard deviation

1. Find column names which contains mean
2. Find column names which contains standard deviation
3. Combine both the list to get column names matching mean or std using union
4. Find column names which contains meanFreq to remove it from combined list. This is a derived value and so it is removed from the list.
5. Remove column names which contains meanFreq from combined list using setdiff

D. Extract only columns of interest by using select and passing the list of column indexes of interest


Step 3 : Uses descriptive activity names to name the activities in the data set
-------------------------------------------------------------------------------

1. Read the Activity label file
2. Replace Activity Id with Activity Labels read from the file in the dataset using mutate


Step 4 : Appropriately labels the data set with descriptive variable names.
-----------------------------------------------------------------------------

Using gsub substitute variable names with meaningful text

1. std is expanded to std-dev
2. Acc is expanded to Accelero
3. column starting with t is expaned to time
4. column starting with f is expanded to freqDomSignal

And finally extra . (dot) introduced between words are removed so that there is only 1 . (dot) between words of the name for easy readability


Step 5 : Create independent tidy data set with the average of each variable for each activity and each subject
-------------------------------------------------------------------------------

1. Group the data by Activity and Subject
2. Call summarize with all variables using summarise_each
3. Write the output to a file as instructed using write.table with row.name=FALSE
4. Print the output in console
