setwd("D:\\DataScience_2019501071\\Data Mining\\DM Assignment2")
data <- read.csv("myfirstdata.csv",header=FALSE)
head(data)
c(is.factor(data[,1]),is.numeric(data[,1]))
c(is.factor(data[,2]),is.numeric(data[,2]))
which.nonnumeric <- function (column){
  which(is.na(suppressWarnings(as.numeric(as.character(column)))))
}
for (name in names(data)){
  c <- data[[name]]
  r <- which.nonnumeric(c)
  v <-c[r]
  msg <- ''
  if(length(v)){
    msg <-sprintf("data$%s is qualitative (%s[%d] == '%s')",name, name, r, as.character(v))
  }else{
    msg <-sprintf("data$%s is quantitative(all rows are numeric)", name)
  }
  print(msg)
}
plot(data[,1])
plot(data[,2])