getwd()
setwd("C:\\Users\\it24104206\\Desktop\\lab 5")
Delivery_Times<-read.table("Exercise_Lab 05.txt",header = TRUE)
Delivery_Times
fix(Delivery_Times)

names(Delivery_Times)<-c("x1")
fix(Delivery_Times)

attach(Delivery_Times)

#drawing a histogram
#n=no of class
#length=n+1

histogram<-hist(x1,main = "Histogram for Number of shareholders ",breaks = seq(20,70,length =8),right = FALSE)

breaks <-round(histogram$breaks)
freq <-histogram$counts
mids <- histogram$mids

classes <-c()
for (i in 1:length(breaks)-1) {
  classes[i]<-paste0("[",breaks[i],",",breaks[i+1],")")
  
}
cbind(classes=classes,frequency=freq)
lines(mids,freq)
plot(mids,freq,type = 'l',main="Frequency polygon for shareholders",xlab = "shareholders",ylab = "frequency",ylim = c(0,max(freq)))

cum.freq<-cumsum(freq)

new<-c()
for (i in 1:length(breaks)) {
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
  
}

plot(breaks,new, type = 'l', main = "Cumalative frequency polygon for shareholders",xlab="shareholders", ylab = "cumulative frequency",ylim=c(0,max(cum.freq)))
cbind(Upper=breaks,cumFreq=new)
plot(breaks,new, type = 'o', main = "Cumalative frequency polygon for shareholders",xlab="shareholders", ylab = "cumulative frequency",ylim=c(0,max(cum.freq)))

