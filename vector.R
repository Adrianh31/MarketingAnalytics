#Data Structures in R

#vectors----
(v1 = c('A', 'B', 'C'))
(v2 = c(1, 2, 3))
(v3 = c(TRUE, FALSE, TRUE))
v4 = 1:10
v5 = seq(1, 10, 2)
v4; v5
v4[1:5]
v4[3:4]
v4[4:2]
v4[-1]
v4[-2]
v4[-1, -2]
v4[-c(1,2,3)]
v4[v4>5]
v1[v1='A']
v1[v1=='A']
v1[v1 %in% c('A', 'C')]
v1[v1 %in% c('A', 'D')]
v1[1]
(v7 = 1:5)
(names(v7) = c('p', 'q', 'r', 's', 't'))
v7
v7('p')
v7['p']
v7[1]
str(v7)
str(v1)
class(v7)
class(v1)



df = data.frame(rollno = c(1, 2, 3), name = c('jaimin', 'shlok', 'rahul'), course = c('MBA', 'BBA', 'MCA'), dept = c('Dept1', 'Dept2', 'Dept3'), marks = floor(runif(3, 50, 100)))
df
df = fix(df)

str(df)
class(df)

ls()
(mylist1 = list(1, df, v4))

?matrix

(mymatrix = matrix(1:24, nrow=4))
(mymatrix = matrix(1:24, ncol=4, byrow=TRUE))

?array
(myarray = array(1:24, dim=c(4, 3, 2)))
(myarray = array(1:24, dim=c(4, 3, 2), dimnames = list(c('s1', 's2', 's3', 's4'), c('Sub1', 'Sub2', 'Sub3'), c('Dept1', 'Dept2'))))

df$name
df$gender = c('M', 'F', 'M')
df

?factor
str(df)
df$gender = factor(df$gender)
str(df)
