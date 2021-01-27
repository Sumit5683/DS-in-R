#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality

###head and tail
head(airquality)
tail(airquality)
head(airquality,15)
tail(airquality,7)

###columns
airquality[,c(1,2)]
airquality[c(1:15),c(1:3)]
df<- airquality[,-6]
summary(airquality[1,])
summary(airquality[c(1:5),c(1:3)])
airquality$Wind
airquality$Temp[50]
airquality$Temp


##summary of the data
summary(airquality$Month)
summary(airquality)


###plot graph
plot(airquality$Wind)
plot(airquality$Wind,airquality$Ozone,type='p')  ##p for point
plot(airquality)


##points and lines
plot(airquality$Wind,type='l') ##l for line
plot(airquality$Temp,type='b') ##b for both
plot(airquality$Ozone, xlab='ozone concentration',
     ylab='no. of instances', main='ozone level in my city')
plot(airquality$Temp, type='l',xlab='temp concentration',
     ylab='no of isntances', main='Temp in my city',
     col='blue')

##horizontal bar plot
barplot(airquality$Solar.R, xlab='solar',
        ylab='solar level', col = 'blue', main='solar level intensity', 
        horiz = F,axes = T)

##histogram
hist(airquality$Month)
hist(airquality$Day, main = 'airquality day wise'
     ,xlab = 'days', col = 'blue')

##single box plot
boxplot(airquality$Ozone, main="boxplot")

##multiple boc plot
boxplot(airquality$Temp, main="multiple")

##