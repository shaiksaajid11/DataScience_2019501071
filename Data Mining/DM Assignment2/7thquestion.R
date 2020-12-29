setwd("D:\\DataScience_2019501071\\Data Mining\\DM Assignment2")
ca_data <- read.csv("CA_house_prices.csv",header=FALSE)
oh_data <- read.csv("OH_house_prices.csv",header=FALSE)
boxplot(ca_data[,1],oh_data[,1],col="red",main="SAAJID",names=c("CA houses","Ohio houses"),ylab="Prices(in thousands)")
hist(ca_data[,1]*1000,breaks=seq(0,3500000,by=500000),col="blue",xlab="prices",ylab="Frequency",main="SAAJID")

plot(ecdf(ca_data[,1]),verticals = TRUE,do.p=FALSE,main="SAAJID",xlab="prices(in thousands)",ylab="FREQUENCY")
lines(ecdf(oh_data[,1]),verticals = TRUE,do.p=FALSE,col.h="red",col.v="red",lwd=4)
legend(2100,.6,c("CA HOUSES","OH HOUSES"),col=c('black',"red"),lwd=c(1,4))

median(oh_data[,1])
mean(oh_data[,1])
median(oh_data[,1]+10)
median(oh_data[,1]*2)