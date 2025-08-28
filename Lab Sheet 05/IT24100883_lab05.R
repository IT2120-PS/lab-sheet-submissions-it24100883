setwd("C:\\Users\\it24100883\\Desktop\\IT24100883")

##1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header= TRUE)
fix(Delivery_Times)
attach(Delivery_Times)

##2
histogram <- hist(Delivery_Times$Delivery_Time_.minutes.,main = "Histogram for Delivery Time", breaks = seq(20,70,length = 10),right= FALSE,xlab="Time",ylab="Frequency")

##3
##The distribution of delivery times is approximately symmetric, with most values between 35 and 45 minutes

##4
cum_freq <- cumsum(histogram$counts)
cum_freq 
mids <- round(histogram$mids)
mids
plot(mids,cum_freq,type="o",main ="cumulative Frequency polygon",xlab = "Delivery Time(minutes)",ylab = "cumulative Frequency", col="blue")