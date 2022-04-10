#A
#Diketahui
x=2
v=10
#Menggunakan fungsi dhicsq
peluang4=dchisq(x,v,ncp=0,log=FALSE)
peluang4

#B
set.seed(0)
#Menggunakan fungsi rchisq
hist(rchisq(v,n=100),xlab="X", ylab="V", main="Histogram of Chis-quare")

#C
E=v 
E
Var=v*2 
Var

#Referensi
#https://www.rumusstatistik.com/2013/07/distribusi-khi-kuadrat-chi-square.html