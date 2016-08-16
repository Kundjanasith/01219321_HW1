file <- read.csv('mobile.csv')

names(file)[2] <- "2000"
names(file)[3] <- "2001"
names(file)[4] <- "2002"
names(file)[5] <- "2003"
names(file)[6] <- "2004"
names(file)[7] <- "2005"
names(file)[8] <- "2006"
names(file)[9] <- "2007"
names(file)[10] <- "2008"
names(file)[11] <- "2009"
names(file)[12] <- "2010"
names(file)[13] <- "2011"
names(file)[14] <- "2012"
names(file)[15] <- "2013"
names(file)[16] <- "2014"
names(file)[17] <- "2015"

file1 <- subset(file, country=="Thailand")
file2 <- subset(file, country=="Thailand"|
          country=="Brunei Darussalam"|
          country=="Cambodia"|
          country=="Timor-Leste"|
          country=="Indonesia"|
          country=="Lao P.D.R."|
          country=="Malaysia"|
          country=="Myanmar"|
          country=="Philippines"|
          country=="Singapore"|
          country=="Viet Nam")
file3 <- subset(file, country=="China")

file1 <- data.frame(t(file1))
file2 <- data.frame(t(file2))
file3 <- data.frame(t(file3))

write.csv(file1,file="mobile1.csv")
write.csv(file2,file="mobile2.csv")
write.csv(file3,file="mobile3.csv")
