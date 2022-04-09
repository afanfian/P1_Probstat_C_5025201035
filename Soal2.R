#A
#Diketahui
pasien=20
p_sembuh=0.2
sembuh=4
#Menggunakan fungsi dbinom
peluang2=dbinom(sembuh,pasien,p_sembuh,log=FALSE)
peluang2

#B
set.seed(0)
#Menggunakan fungsi rbinom
hist(rbinom(sembuh,pasien,p_sembuh),xlab="X",ylab="Frequency",main="Histogram of Binomial")

#c
E=pasien*p_sembuh
E
Var=pasien*p_sembuh*(1-p_sembuh)
Var

#Referensi 
#https://www.rumusstatistik.com/2012/07/rumus-distribusi-binomial.html