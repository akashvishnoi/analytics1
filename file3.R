#data Structures

#vectors
v1 = 1:10000 #create vector from 1 to 10k
v2 = c(1,4,5,10)

#matrix
v3 = c('a','Akash', 'IIM')
v4 = c(TRUE, FALSE, T, F< T)
class(v4)

#array
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
barplot(t1, col = 1:2, horiz =T)
