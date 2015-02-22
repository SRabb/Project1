setwd("C:/Users/Sam/SkyDrive/Coursera/GettingCleaning/UCI HAR Dataset")
train<-read.table("./train/X_train.txt")
test<-read.table("./test/X_test.txt")
allrows<-rbind(test,train)
colnames<-read.table("features.txt")
library(stringr)
meansTF<-str_detect(colnames$V2,"mean")
stdTF<-str_detect(colnames$V2,"std")
meanandstd<-allrows[ ,meansTF|stdTF]