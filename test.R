#read a csv file


#reading the dataset
IBM <- read.csv(file="IBMStock.csv", header=TRUE, sep=",")
GE <- read.csv(file="GEStock.csv", header=TRUE, sep=",")
CocaCola <- read.csv(file="CocaColaStock.csv", header=TRUE, sep=",")
Boeing <- read.csv(file="BoeingStock.csv", header=TRUE, sep=",")

meanIBM=mean(IBM$StockPrice,rm.na=TRUE)
meanGE=mean(GE$StockPrice,rm.na=TRUE)
meanCC=mean(CocaCola$StockPrice,rm.na=TRUE)
meanBoeing=mean(Boeing$StockPrice,rm.na=TRUE)

MySubmission = data.frame(company=c("IBM","GE","Coca Cola","Boeing"),means = c(meanIBM,meanGE,meanCC,meanBoeing))
write.csv(MySubmission, "output.csv", row.names=FALSE)
