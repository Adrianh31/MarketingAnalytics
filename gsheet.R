#using gsheet
library(gsheet)

#url = 'https://docs.google.com/spreadsheets/d/1PWWoMqE5o3ChwJbpexeeYkW6p4BHL9hubVb1fkKSBgA/edit#gid=216113907'
#denco2 = as.data.frame(gsheet2tbl(url))
denco2 = read.csv('denco.csv')
str(denco2)

head(denco2, n=7)
tail(denco2)

sales = denco2  #keeping a backup
?summary
summary(sales)
str(sales)
sales$revenue = as.numeric(sales$revenue)
dim(sales)
unique(sales$custname)
length(unique(sales$custname))
length(unique(sales$region))
aggregate(sales$revenue, by = list(sales$custname), FUN = max)
df1 = aggregate(sales$revenue, by = list(sales$custname), FUN = sum)
head(df1)
str(df1)

df1 = df1[order(df1$x, decreasing = TRUE),]
head(df1, 5)
head(df1[order(df1$x, decreasing = TRUE),], 5)

#aggregate formula
(df2 = aggregate(revenue ~ custname + region, data=sales, FUN=sum))
head(df2[order(df2$revenue, decreasing=T),],10)

#List
list1 = tapply(sales$revenue, sales$custname, FUN=sum)
head(list1)
list1
df3 = head(sort(list1, decreasing=T))
summary(df3)
str(df3)

?aggregate

#dplyr
names(sales)

library(dplyr)

sales %>% filter(margin>1000000)

names(sales)

sales %>% group_by(custname) %>% summarise(Revenue = sum(revenue)) %>% arrange(desc(Revenue))

library(dplyr)
sales %>% count(custname, sort=TRUE)

sales %>% group_by(custname) %>% summarise(n = n()) %>% arrange(desc(n))

sales %>% group_by(custname) %>% count(region) %>% arrange(desc(n))

