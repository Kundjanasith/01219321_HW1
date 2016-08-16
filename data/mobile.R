file1 <- read.csv('mobile1.csv')
names(file1)[2] <- "Thailand"

file2 <- read.csv('mobile2.csv')
file2 <- file2[c('Year','The.number.of.mobile.phone')]
names(file2)[2] <- "ASEAN"
file2$ASEAN <- as.numeric(file2$ASEAN)

file3 <- read.csv('mobile3.csv')
names(file3)[2] <- "China"

df <- merge(file1,file2,by="Year")
df <- merge(df,file3,by="Year")

write.csv(df,file="mobile.csv",row.names=FALSE)
