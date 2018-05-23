# Data Licensing Info
# Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

#---------------------------------------------------|
#                  Download Dataset                 |
#---------------------------------------------------|

fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "UCIData.zip"

download.file(url = fileURL, destfile = fileName)
unzip(zipfile=fileName)

#---------------------------------------------------|
#            Collect & Clean Feature Names          |
#---------------------------------------------------|

features <- read.csv(file="UCI HAR Dataset/features.txt", sep="", header=FALSE, stringsAsFactors = FALSE)
features <- features[,2]
features <- c(features, "Activity.Label","Subject.Label")

features <- sapply(features, FUN = function(feature) {
  feature <- gsub("BodyBody", "Body", feature)
  feature <- gsub("tBody", "Time.Domain.Body.", feature)
  feature <- gsub("fBody", "Frequency.Domain.Body.", feature)
  feature <- gsub("Gravity", "Gravity.", feature)
  feature <- gsub("tGravity", "Time.Domain.Gravity", feature)
  feature <- gsub("Acc", "Acceleration.", feature)
  feature <- gsub("Jerk", "Jerk.", feature)
  feature <- gsub("Gyro", "Gyrometer.", feature)
  feature <- gsub("Mag", "Magnitude.", feature)
  feature <- gsub("-mean()-", "Mean.", feature, fixed = TRUE)
  feature <- gsub("-mean()", "Mean", feature, fixed = TRUE)
  feature <- gsub("-mean", "Mean.", feature, fixed = TRUE)
  feature <- gsub("-std()-", "Standard.Deviation.", feature, fixed = TRUE)
  feature <- gsub("-std()", "Standard.Deviation", feature, fixed = TRUE)
  feature <- gsub("Freq()-", "Frequency.", feature, fixed = TRUE)
  feature <- gsub("Freq()", "Frequency", feature, fixed = TRUE)
  feature <- gsub("gravityMean", "Gravity.Mean", feature, fixed = TRUE)
  feature <- gsub("gravity", "Gravity", feature, fixed = TRUE)
})

#---------------------------------------------------|
#            Read Training & Testing Data           |
#---------------------------------------------------|

trainingData <- read.csv(file = "UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
trainingLabel <- read.csv(file = "UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
trainingSubject <- read.csv(file = "UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

trainingData <- cbind(trainingData, trainingLabel, trainingSubject)

testingData <- read.csv(file = "UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
testingLabel <- read.csv(file = "UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
testingSubject <- read.csv(file = "UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

testingData <- cbind(testingData, testingLabel, testingSubject)

mergedData <- rbind(trainingData, testingData)

#---------------------------------------------------|
#        Set Column Names & Extract Features        |
#---------------------------------------------------|

colnames(mergedData) <- features
mergedData <- mergedData[,grepl("mean|standard|label", colnames(mergedData), ignore.case = TRUE)]

#---------------------------------------------------|
#         Translate Activity Label to Names         |
#---------------------------------------------------|

activityList <- read.csv(file="UCI HAR Dataset/activity_labels.txt",sep="",header=FALSE,stringsAsFactors = FALSE)
activityList <- activityList[,2]
mergedData$Activity.Label <- sapply(mergedData$Activity.Label, FUN = function(activity) {activity <- activityList[activity]})

#---------------------------------------------------|
#            Grouped Mean per Meaurement            |
#---------------------------------------------------|
tidyData <- aggregate(mergedData[,1:(ncol(mergedData)-2)], by = list(Activity = mergedData$Activity.Label, Subject = mergedData$Subject.Label), mean)
colnames(tidyData)[3:(ncol(tidyData))] <- paste("Avg",colnames(tidyData[,3:(ncol(mergedData))]),sep=".")

#---------------------------------------------------|
#                 Save Tidy Data                    |
#---------------------------------------------------|
write.table(tidyData, file="tidyUCIData.txt", row.names = FALSE)
