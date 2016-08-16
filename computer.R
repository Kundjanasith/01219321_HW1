require(ggplot2)

file1 <- read.csv('data/computer1.csv')
names(file1)[2] <- "Thailand"

file2 <- read.csv('data/computer2.csv')
file2 <- file2[c('Year','The.number.of.computer')]
names(file2)[2] <- "ASEAN"
file2$ASEAN <- as.numeric(file2$ASEAN)

file3 <- read.csv('data/computer3.csv')
names(file3)[2] <- "China"

df <- merge(file1,file2,by="Year")
df <- merge(df,file3,by="Year")

graph <- ggplot(df, aes(Year)) +
  geom_line(aes(y=Thailand), color="red") +
  geom_line(aes(y=ASEAN), color="blue") +
  geom_line(aes(y=China), color="green")

graph <- graph + ylab("The number of computer") + xlab("Year")

graph
