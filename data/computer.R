file1 <- read.csv('computer1.csv')
names(file1)[2] <- "Thailand"

file2 <- read.csv('computer2.csv')
file2 <- file2[c('Year','The.number.of.computer')]
names(file2)[2] <- "ASEAN"
file2$ASEAN <- as.numeric(file2$ASEAN)

file3 <- read.csv('computer3.csv')
names(file3)[2] <- "China"

df <- merge(file1,file2,by="Year")
df <- merge(df,file3,by="Year")

write.csv(df,file="computer.csv",row.names=FALSE)
