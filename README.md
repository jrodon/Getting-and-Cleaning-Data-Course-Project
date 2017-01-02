# Project tasks

The purpose of the project is to demonstrate the student ability to
collect, work with, and clean a data set. The goal is to prepare tidy
data that can be used for later analysis.

# Origin of the data

Human Activity Recognition database built from the recordings of 30
subjects performing activities of daily living (ADL) while carrying a
waist-mounted smartphone with embedded inertial sensors. For a full
description see
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones\#

# Contents of the repository

## run\_analysis.R

The R script that process the data as described in the **CodeBook.md** file.

## README.md

This file.

## CodeBook.md

Description of the variables, the original data, and the modifications performed.

# Instructions

1.  Download the "run\_analysis.R" file into your working directory.

2.  Open an R session in your working directory.

3.  From within R, run the "run\_analysis.R" file with the command
    ```R
    source('\[working\_directory\_path\]/run\_analysis.R')
    ```

    a.  This will create the "averagesHAR.csv" file in your
        working directory.

    b.  The "averagesHAR.csv" file can be read back into R with the R
        command
    ```R
    mydata \<- read.csv('\[file\_path\]/averagesHAR.csv')
    ```


