#A
#Diketahui
x=3
p=0.20
#Menggunakan fungsi dgeom
peluang=dgeom(x,p,log=FALSE) 
peluang

#B
mean(rgeom(n = 10000, p=0.20) == 3)

#c
#Kesimpulan terdapat di Readme

#D
set.seed(0)
#Menggunakan fungsi rgeom
hist(rgeom(x,p),xlab="X",main="Histogram of Geometric")

#E
E=1/p #Nilai rata-rata
E
var=(1-p)/p^2 #Nilai varian
var

#Referensi 
#https://www.rumusstatistik.com/2012/07/rumus-distribusi-geometrik.html