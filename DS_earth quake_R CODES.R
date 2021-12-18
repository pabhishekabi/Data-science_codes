e_quakes<-datasets::quakes

########Top 10 rows and last 10 rows########

head(quakes,10)
tail(quakes,10)

######columns#######

quakes[,c(1,2)]

#######summary########

summary(quakes[,1])
summary(quakes[1,])
summary(quakes)

######dollar operator########

quakes$long
summary(quakes$depth)

#########GRAPH PLOT###########

plot(quakes$lat)
plot(quakes$long)
plot(quakes$depth)
plot(quakes$mag)
plot(quakes$stations)
plot(quakes$lat,quakes$long,type ="p")
plot(quakes$depth,quakes$mag,type = "p")
plot(quakes$mag,quakes$stations,type = "l")
plot(quakes$mag,quakes$stations,type = "p")
plot(quakes$mag,quakes$stations,type = "h")
plot(quakes$mag,quakes$stations,type = "b")

########line plot######

plot(quakes$long,type = "l")
plot(quakes$lat,type = "l")
plot(quakes$depth,type = "l")
plot(quakes$mag,type = "l")
plot(quakes$stations,type = "l")

plot(quakes$lat,xlab = 'Index',ylab = "dept concentration",main = 'depth level in NY city',col='blue')
plot(quakes$mag,xlab = 'Index',ylab = "long ",main = 'mag level in NY city',col='red')

#########Horizontal bar plot############

barplot(quakes$lat,main = 'lat in NY',ylab = 'mag levels',col = 'blue',horiz = F,axes = T)
barplot(quakes$long,main = 'long in NY',ylab = 'long levels',col = 'blue',horiz = T,axes = F)
barplot(quakes$long,main = 'long in NY',ylab = 'long levels',col = 'blue',horiz = F,axes = F)
barplot(quakes$long,main = 'long in NY',ylab = 'long levels',col = 'blue',horiz = F,axes = T)

##########histogram#######

hist(quakes$long)
hist(quakes$long)
hist((quakes$mag))
hist(quakes$stations)

hist(quakes$stations,main = 'earth quake level in NY city',xlab='level',col='blue')

#########box plot########

boxplot(quakes$lat,main='Box plot')
boxplot(quakes$mag,main='Box plot')

boxplot.stats(quakes$mag)

#####multipal box plots######

boxplot(quakes[,1:4],main='multiple')
boxplot(quakes[,1:5],main='multiple')
boxplot(quakes[1:4,],main='multiple')


######### Diffrent graphs in one view#############

par(mfrow=c(3,3),mar=c(2,5,2,1),las=0,bty="o")
plot(quakes$depth)
plot(quakes$depth,quakes$lat)
plot(quakes$depth,type = "l")
plot(quakes$depth,type = "l")
plot(quakes$depth,type = "l")
boxplot(quakes$depth,main='depth of earth quakes',xlab='depth leles',col='green',horiz=FALSE)
hist(quakes$long)
boxplot(quakes$mag)
boxplot(quakes[,0:4],main='multipal box plots')

###############SD VAR SKEWNESS KURTOSIS##############
#####SD#########

sd(quakes$lat,na.rm = T)
sd(quakes$long,na.rm = T)
sd(quakes$mag,na.rm = T)
sd(quakes$stations,na.rm = T)
sd(quakes$depth,na.rm = T)

############ VAR ###########

var(quakes$lat,na.rm = T)
var(quakes$long,na.rm = T)
var(quakes$mag,na.rm = T)
var(quakes$depth,na.rm = T)
var(quakes$stations,na.rm = T)

######## SKEWNESS ########

skewness(quakes$lat,na.rm=T)
skewness(quakes$long,na.rm=T)
skewness(quakes$mag,na.rm=T)
skewness(quakes$stations,na.rm=T)
skewness(quakes$depth,na.rm=T)

########### KURTOSIS #########

kurtosis(quakes$lat,na.rm=T)
kurtosis(quakes$long,na.rm=T)
kurtosis(quakes$stations,na.rm=T)
kurtosis(quakes$mag,na.rm=T)
kurtosis(quakes$depth,na.rm=T)

###########################

df<-quakes[,-5]

