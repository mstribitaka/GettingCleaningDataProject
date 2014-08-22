# Load libraries
library(reshape2)

# Load test and train data
testData <- read.table('test/X_test.txt', header = FALSE)
testActivities <- read.table('test/y_test.txt', header = FALSE)
testSubjects <- read.table('test/subject_test.txt', header = FALSE)
trainData <- read.table('train/X_train.txt', header = FALSE)
trainActivities <- read.table('train/y_train.txt', header = FALSE)
trainSubjects <- read.table('train/subject_train.txt', header = FALSE)

# Merge data
mergedData <- rbind(testData, trainData)
mergedActivities <- rbind(testActivities, trainActivities)
mergedSubjects <- rbind(testSubjects, trainSubjects)
mergedAll <- cbind(mergedSubjects, mergedActivities, mergedData)

# Changed Activities labels with more descriptive terms
activitiesLabels <- read.table('activity_labels.txt', header = FALSE)
activitiesNames <- activitiesLabels[,2]
mergedAll[,2] <- factor(mergedAll[,2], labels=activitiesNames)

# Load column names into a vector from features.txt file
cnames <- read.table('features.txt', header = FALSE)
newcnames <- c("Subject", "Activity", as.character(cnames[,"V2"]))
colnames(mergedAll) <- newcnames

# Keep only columns with 'mean' or 'std' in column name, as well as 'Subject', 
# 'Activity' columns

keepCols <- c(1,2,grep("[Mm]ean|[Ss][Tt][Dd]", names(mergedAll)))
meanSDData <- mergedAll[,keepCols]

#-----------------------
# Create tidy data set
#-----------------------

# Melt data
dataMelt <- melt(meanSDData, id=c("Subject", "Activity"))
# Cast data to get mean values of each variable for each combination of 
# Subject and Activity
dataCast <- dcast(dataMelt, Subject + Activity ~ variable, mean)
# Write tidy data to file
write.table(dataCast, file="TidyData2.txt", row.names=FALSE, col.names=TRUE)
