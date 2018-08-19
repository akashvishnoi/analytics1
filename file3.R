#data Structures

#vectors
v1 = 1:10000 #create vector from 1 to 10k
v2 = c(1,4,5,10)

#matrix
v3 = c('a','Akash', 'IIM')
v4 = c(TRUE, FALSE, T, F< T)
class(v4)


mean(v1)
median(v1)
sd(v1)
var(v1)
hist(v1)
hist(women$height)
v2
v2[v2 >=5]


x = rnorm(60, mean = 60, sd = 60)
plot(x)
hist(x)
plot(density(x))
lines(density(x))
plot(density(x))
abline(plot(x))
abline(density(x))


x1 = LETTERS[5:20]
x1

set.seed(1234)
(y1 = sample(x1, size =5))
y1

(gender=sample(c('M','F'), size = 60, replace = TRUE, prob = c(0.6,0.4)))
t1 = table(gender)
t1
prop.table(t1)
pie(t1)
barplot(t1, col = 1:2, horiz=T)

?dplyr



#array
(m1 = matrix(1:24, nrow=4))
(m2 = matrix(1:24, nrow=4, byrow=T))
(m3 = matrix(1:24, nrow=4, byrow=T))

(x=trunc(runif(60,60,100)))
plot(density(x))
?runif

(m4 = matrix(x, ncol=6))
m4[10,]
m4[8:10,c(1,2,6)]
rowSums(m4[8:10, c(1,3,5)])



#data.frame
#rollno, name, gender, course, marks1, marks2
(rollno = 1:60)
(name=paste('student1',1:60,sep='-'))

name[c(15,20,17)]
name[-1]
name[-c(1:10)]
rev(name)
rev(name[-60])


(gender=sample(c('Male', 'Female'), size=60,replace=T, prob=c(0.3,0.7)))
(course=sample(c('BBA', 'MBA', 'FPM'), size=60,replace=T, prob=c(0.2,0.5,0.3)))
(marks1 = ceiling(rnorm(60, mean=65, sd=7)))
marks1
(marks2 = ceiling(rnorm(60, mean=60, sd=11)))
(grades = sample(c('A','B','C'), size=60, replace=T))
students=data.frame(rollno, name, gender, course, marks1, marks2, grades)
class(students)
summary(students)
students[, c('name')]
students[students$gender == 'Male', c('rollno', 'gender', "grades")]
students$gender
t1 = table(students$gender)
t1
barplot(table(students$course),col = c('red','green','gold'))
barplot(t1)
text(1:3, table(students$course)+2,table(students$course))

head(students)
dim(students)
tail(students, n=7)


#avg marks
aggregate(students$marks1, by=list(students$gender), FUN=mean)
aggregate(students$marks2, by=list(students$course), FUN=max)
aggregate(students$marks2, by=list(students$course, students$gender), FUN=max)
aggregate(students$marks2, by=list(students$course, students$grade), FUN=max)

library(dplyr)
students %>% group_by(gender) %>% summarise(mean(marks1))
students %>% group_by(course,gender) %>% summarise(meanmarks1 = mean(marks1), min(marks2), max(marks2)) %>% arrange(desc(meanmarks1)) %>% filter(gender=='Male') %>% head(n=3)

students %>% sample_n(2)
students %>% sample_frac(0.1) %>% arrange(course) %>% select (name, gender)
students %>% arrange(desc(course), gender, marks1)


#factor
students$gender = factor(students$gender)
summary(students$gender)


write.csv(students,'./data/iimtrichy.csv')
students2 = read.csv('./data/iimtrichy.csv')

#delete column
students2 = students2[,-60]
students2
