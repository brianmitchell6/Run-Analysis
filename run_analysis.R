run_analysis <- function()
{
    #*****Begin Read in training files*****#
    xtrain <- read.table("train/x_train.txt", sep="", header=FALSE)
    ytrain <- read.table("train/y_train.txt", sep="", header=FALSE)
    subtrain <- read.table("train/subject_train.txt", sep="", header=FALSE)
    #*****End Read in training files*****#
    
    #*****Begin Read in test files*****#
    xtest <- read.table("test/x_test.txt", sep="", header=FALSE)
    ytest <- read.table("test/y_test.txt", sep="", header=FALSE)
    subtest <- read.table("test/subject_test.txt", sep="", header=FALSE)
    #*****End Read in test files*****#
    
    #*****Begin Combine the testing and training files*****#
    xcombined <- rbind(xtrain, xtest)
    ycombined <- rbind(ytrain, ytest)
    subcombined <- rbind(subtrain, subtest)
    #*****End Combine the testing and training files*****#
    
    #*****Begin Read in features file*****#
    features <- read.table("features.txt", sep="", header=FALSE)
    #*****End Read in features file*****#
    
    #*****Begin Read in activity label file*****#
    activities <- read.table("activity_labels.txt", sep="", header=FALSE)
    #*****End Read in activity label file*****#
    
    #*****Begin Add column names to files*****#
    colnames(subcombined) <- "Subject"
    colnames(ycombined) <- "Activity"
        ###Create a vector of feature names and use as column labels###
    featurenames <- features[ ,2]
    colnames(xcombined) <- featurenames
    #*****End Add column names to files*****#
    
    #*****Begin Combine into one data frame*****#
    allcombined <- cbind(subcombined, ycombined, xcombined)
    #*****End Combine into one data frame*****#
    
    #*****Begin Get list of indices for mean and standard deviation column names*****#
    col.names <- colnames(allcombined)
    meanindex <- grep("mean", col.names, value=TRUE)
    Meanindex <- grep("Mean", col.names, value=TRUE)
    stdindex <- grep("std", col.names, value=TRUE)
    filtered.col.names <- c(meanindex, Meanindex, stdindex)
    #*****End Get list of indices for mean and standard deviation column names*****#
    
    #*****Begin Select mean and standard deviation columns from data set*****#
    meanstd.df <- subset(allcombined, select = filtered.col.names)
    meanstd.df <- cbind(Subject=allcombined$Subject, Activity=allcombined$Activity, meanstd.df)
    #*****End Select mean and standard deviation columns from data set*****#
    
    #*****Begin Substitute activity names for numbers*****#
    for (i in 1:nrow(meanstd.df)) 
    {
        if (meanstd.df[i, 2]== 1)
        {
            meanstd.df$Activity[i] <- as.character(activities$V2[1])
        }
        else if (meanstd.df[i, 2] == 2)
        {
            meanstd.df$Activity[i] <- as.character(activities$V2[2])
        }
        else if (meanstd.df[i, 2] == 3)
        {
            meanstd.df$Activity[i] <- as.character(activities$V2[3])
        }
        else if (meanstd.df[i, 2] == 4)
        {
            meanstd.df$Activity[i] <- as.character(activities$V2[4])
        }
        else if (meanstd.df[i, 2] == 5)
        {
            meanstd.df$Activity[i] <- as.character(activities$V2[5])
        }
        else
        {
            meanstd.df$Activity[i] <- as.character(activities$V2[6])
        }
    }
    #*****End Substitute activity names for numbers*****#
    
    #*****Begin Derive the means of all columns grouped by subject and activity*****#
    meanstd.agg <- aggregate.data.frame(meanstd.df, by = list(Subject=meanstd.df$Subject,Activity=meanstd.df$Activity), subset=meanstd.df[,3:88], mean)
    meanstd.agg <- meanstd.agg[,-(3:4)]
    #*****End Derive the means of all columns grouped by subject and activity*****#
    
    #*****Begin Write tidy data frame to file run_analysis.txt*****#
    write.table(meanstd.agg, file="run_analysis.txt", row.names=FALSE)
    #*****End Write tidy data frame to file run_analysis.txt*****#
}