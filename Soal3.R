#A
#Diketahui
history_bayilahir=4.5
peluang_bayilahir=6
#Menggunakan fungsi dpois
peluang3=dpois(peluang_bayilahir,history_bayilahir)
peluang3

#B
set.seed(0)
n=356
#Menggunakan fungsi rpois
hist(rpois(n,history_bayilahir),main="Histogram of Poisson")

#C
#Kesimpulan terdapat di Readme

#D
E=Var=history_bayilahir
E
Var

#Referensi
#https://www.rumusstatistik.com/2012/07/rumus-distribusi-poisson.html