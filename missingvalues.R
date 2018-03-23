v1 = c(1,2,NA,NA,5)
is.na(v1)
mean(v1, na.rm=T)   #na.rm=removeNA
na.omit(v1)
anyNA(v1)

v1[is.na(v1)] = mean(v1, na.rm=T)
v1


library(VIM)
data(sleep, package = 'VIM')
head(sleep)
dim(sleep)
complete.cases(sleep)
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
sum(is.na(sleep$Dream))

mean(is.na(sleep$Dream))
sum(is.na(sleep))
colSums(is.na(sleep))
rowSums(is.na(sleep))


marks = c(1:80, 100, 550, 320, 1000)
marks
summary(marks)
boxplot(marks)
