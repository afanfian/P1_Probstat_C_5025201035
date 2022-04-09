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
hist(rchisq(x,v,n=100),main="Histogram of Chis-quare")

#C
E=v #Nilai rata-rata
E
Var=v*2 #Nilai varian
Var

#Referensi
#https://www.rumusstatistik.com/2013/07/distribusi-khi-kuadrat-chi-square.html