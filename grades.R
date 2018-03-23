sname = c('Anish', 'Sagar', 'Jaimin', 'Nihali', 'Amber', 'Bhavya')
course = c('BCB', 'CSE', 'ECE', 'IT', 'MECH', 'PHARMA')
gender = c('M', 'M', 'M', 'F', 'M', 'F')
grades = c('B', 'S', 'A', 'D', 'E', 'C')
marks = floor(runif(6, 50, 100))
df1 = data.frame(sname, course, gender, grades, marks)
df1
str(df1)

df1$sname = as.character(df1$sname)
str(df1)

df1$course = factor(df1$course)
str(df1)

df1$grades = factor(df1$grades, ordered = T, levels = c('S', 'A', 'B', 'C', 'D', 'E'))
df1$grades
str(df1)
df1
