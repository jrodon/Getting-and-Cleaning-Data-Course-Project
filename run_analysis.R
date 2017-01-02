## "run_analysis.R" by Javier A. Rodón
##
## history:
##      - v 1.0: Script created
##
## This script hast two parts. The first part loads the training and the test sets of the Human Activity
## Recognition Using Smartphones Dataset v1.0 [1] and merges them into one data set "humanActivityRecog",
## assigning descriptive names to the variables and appending the subjects of the experiment as well as the
## activities they performed while recording the accelerometer values.
##
## The second part takes the "humanActivityRecog" set and creates the "averagesHAR" set, consisting of the
## mean of each variable of the "humanActivityRecog" set for each activity and each subject.
## As a final step it exports the "averagesHAR" set to the "averagesHAR.csv" comma-separated-values file in
## the current working directory.
##
## References: [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human
## Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.
## International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Setting up the environment.
##
# Load required libraries.
require(utils)
require(data.table)
require(dplyr)
require(tidyr)

# Define some paths to simplify later.
pathData <- "./data/UCI HAR Dataset/"
pathTest <- "./data/UCI HAR Dataset/test/"
pathTrain <- "./data/UCI HAR Dataset/train/"

## Check if the data in its own directory "./data", download otherwise and unzip if necessary
if(!file.exists("./data/dataset.zip")) {
        if(!dir.exists("./data")) dir.create("./data")
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl, "./data/dataset.zip", method = "curl")
}
if(!dir.exists(pathData)) unzip("./data/dataset.zip", exdir = "./data")

## First part: load the necessary variables from the training and test sets, attach the subject and activities
## codes, and finally merge the training and the test sets.
##
# Load the variables names from the list provided. The list has to be transposed to have each name as a
# variable.
varNames <- transpose(read.table(paste0(pathData,"features.txt"), row.names = 1))
#
# Determine the required columns to later select the necessary parts of the two sets.
requiredCols <- which(grepl("(mean\\(\\)|std\\(\\))", varNames))
#
# Make the variable names more descriptive
varNames <- gsub("(^(.)|[-,](.))", "\\U\\1", varNames, perl = T) # Makes uppercase the first letter of every word.
varNames <- gsub("([\\(\\)]|^[tT])", "", varNames) # Removes the brackets, dashes, and initial "t" since
                                                   # it is not necessary to specify time-domain.
varNames <- gsub("^[fF]", "FFT", varNames) # Changes the initial "f" of the frequency-domain measurements to
                                           # the more descriptive "FFT": Fast Fourier Transform.
varNames <- gsub("t(Bo)|t(Gr)", "\\1", varNames) # Removes the "t" from other names.
varNames <- gsub("([0-9]+),([0-9])", "Bins\\1to\\2", varNames) # Makes names more explicit.
varNames <- gsub("(ArCoeff)-([XYZ]{1}),([0-9]{1})", "\\1\\3-\\2", varNames) # Same as above.
varNames <- gsub("([XYZ]{1}),([XYZ]{1})", "\\1to\\2", varNames) # Same as above.
varNames <- gsub("(^[aA]ngle)([0-9a-zA-Z]+),([0-9a-zA-Z]+)", "\\1-Btw-\\2-And-\\3", varNames) # Same as above.
varNames <- gsub("([XYZ]{1})", "\\1Axis", varNames) # Adds "Axis" where it corresponds.
varNames <- gsub("-","", varNames, fixed = T) # Removes the dashes in the names.
#
# Load the subjects lists for each set
subjectsTrain <- read.table(paste0(pathTrain,"subject_train.txt"), col.names = "subject")
subjectsTest <- read.table(paste0(pathTest,"subject_test.txt"), col.names = "subject")
#
# Load the activities codes for each set as well as the activities names and converts codes into names
activitiesNames <- read.table(paste0(pathData, "activity_labels.txt"), col.names = c("code", "activity"))
activitiesNames$activity <- as.factor(tolower(activitiesNames$activity)) # Make them lowercase
activitiesTrain <- read.table(paste0(pathTrain,"y_train.txt"), col.names = "code") %>%
        inner_join(activitiesNames, activitiesTrain, by = "code") %>%
        select(activity)
activitiesTest <- read.table(paste0(pathTest,"y_test.txt"), col.names = "code") %>%
        inner_join(activitiesNames, activitiesTest, by = "code") %>%
        select(activity)
#
# Load the "Train" and "Test" sets, assigning the corresponding variable names
dataTrain <- read.table(paste0(pathTrain,"X_train.txt"), col.names = varNames)
dataTest <- read.table(paste0(pathTest,"X_test.txt"), col.names = varNames)
#
# Attaches the subject and activities labels to the "Train" and "Test" sets.
dataTest <- tbl_df(cbind(subjectsTest, activitiesTest, dataTest)) %>%
        mutate(originalSample = "test") %>% # Adds a marker to be able to trace it back in the merged set.
        select(subject, activity, originalSample, everything()) # Reorders the columns.
dataTrain <- tbl_df(cbind(subjectsTrain, activitiesTrain, dataTrain)) %>%
        mutate(originalSample = "train") %>%
        select(subject, activity, originalSample, everything())
#
# Merges the two sets and sorts the result first by activity and then by subject.
humanActivityRecog <-
        full_join(dataTest, dataTrain,
                  by = intersect(names(dataTest), names(dataTrain))) %>%
        arrange(activity, subject)

## Second part.
# Extracts the columns with the measurements on the mean and standard deviation for each register.
extractHAR <- humanActivityRecog[c(1:3,requiredCols+3)]
#
# Creates the new set with the mean of each column for each activity and subject with appropriate names for
# the variables
averagesHAR <- tbl_df(
        aggregate(select(extractHAR, -(subject:originalSample)),
                  by = list(Activity = humanActivityRecog$activity,
                            Subject = humanActivityRecog$subject),
                  FUN = "mean"))
names(averagesHAR)[3:dim(averagesHAR)[2]] <-
        sub("(^.)", "MeanOf\\1", names(averagesHAR)[3:dim(averagesHAR)[2]])
#
# Writes the new set to the disk
write.csv(averagesHAR, "averagesHAR.csv", row.names = T)
