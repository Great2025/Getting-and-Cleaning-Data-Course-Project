#Downloading the data
link = tempfile()
download.file('https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
              link, method = 'auto')

#unzips the zip file and stores it in the variable 
UCI_dataset = unzip(link)

#Reading in all the files of the dataset
for (file in UCI_dataset[-c(1:4)]){
        name = tail(strsplit(file, split ='/')[[1]], 1)
        assign(strsplit(name, split = '.txt')[[1]][1], read.table(file,
                                                                  header = FALSE, sep = ""))
}

#reading the list of features and the dictionary of activities
features = read.table(UCI_dataset[2], header = FALSE)
activity = read.table(UCI_dataset[1], header = FALSE)

#filtering the features to obtain only mean and std deviation features
filtered_features = grepl('mean', features[,2], ignore.case = TRUE) | grepl(
        'std', features[,2], ignore.case = TRUE)

#new data frame with only the mean and std deviation features
tidy_train = X_train[,filtered_features] 
tidy_test = X_test[,filtered_features]

#creating the activity variable
Activity_train = unlist(lapply(y_train, function(x) activity[x,2]))
Activity_test = unlist(lapply(y_test, function(x) activity[x,2]))

#creating the two datasets, including the activity name and subject name
tidy_test = cbind(subject_test, Activity_test, tidy_test)
tidy_train = cbind(subject_train, Activity_train, tidy_train)

#setting the col names
feature_list = lapply(features[filtered_features,2], function(x) gsub('()', '', x, fixed = TRUE))
colnames(tidy_train) = colnames(tidy_test) = c('Subject_no', 'Activity_name', unlist(feature_list))

#combinging the two dataframes
tidy = rbind(tidy_train, tidy_test)
tidy = aggregate(tidy[,3:88], by=list(Subject_no = tidy$Subject_no, Activity_name = tidy$Activity_name), mean)

#saving the csv
write.table(tidy, 'tidy_dataset.txt', row.names = FALSE)
