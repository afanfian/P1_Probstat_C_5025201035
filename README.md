# P1_Probstat_C_5025201035
Nama | NRP | Kelas
-----|-----|------
Fian Awamiry Maulana | 5025201035 | Probabilitas dan Statistik (C)

# Soal Nomor 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya
## A
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
## Jawab 
```R
x=3
p=0.20
peluang=dgeom(x,p,log=FALSE) 
peluang
```
**Keterangan**  
Fungsi dgeom yang digunakan untuk membuat plot kepadatan (density plot) geometrik yang pada dasarnya digunakan karena faktor x dan p.  
**Hasil**  
![1a.png](https://drive.google.com/uc?export=view&id=1KC_Z3rUSzBdrIjmZKC7DAQTh0IJ25sbO)  
## B
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
## Jawab 
```R
mean(rgeom(n = 10000, p=0.20) == 3
```
**Keterangan**  
**Hasil**  
![1b.png](https://drive.google.com/uc?export=view&id=155gyjLwXgZzcC8SY34sqRgrAR9H1Ljtu)
## C
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
## Jawab 
Jadi, kesimpulan dari poin a dan b adalah idak terlalu jauh, bedanya kalau a itu nilainya tetap sedangkan kalau b itu hasilnya random, besar kecil nilainya ditentukan oleh X.  
## D
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
## Jawab 
```R
set.seed(0)
#Menggunakan fungsi rgeom
hist(rgeom(x,p),xlab="X",main="Histogram of Geometric")
```
**Keterangan**  
Fungsi rgeom pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi geometrik.  
**Hasil**  
Menggunakan seet.seed (0) dia tidak akan berubah  
![1d-1.png](https://drive.google.com/uc?export=view&id=1GmBc4bs7hZfeMCpZDvKV-0i67_GQERcU)  
Tidak menggunakan seet seed (0)  
![1d-2.png](https://drive.google.com/uc?export=view&id=15jzc_M6Ap-34kqFSv9iGP5u4lveZgRJ9)
## E
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
## Jawab 
```R
E=1/p 
E
var=(1-p)/p^2 
var
```
**Keterangan**  
Untuk referensi rumus saya melihat dari sumber berikut:  
https://www.rumusstatistik.com/2012/07/rumus-distribusi-geometrik.html  
**Hasil**  
![1e.png](https://drive.google.com/uc?export=view&id=1BWSDOEzYYjTGO3j63v9ZYNnHOcyJQWDa)  
# Soal Nomor 2 
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
## A
Peluang terdapat 4 pasien yang sembuh.
## Jawab
```R
pasien=20
p_sembuh=0.2
sembuh=4
peluang2=dbinom(sembuh,pasien,p_sembuh,log=FALSE)
peluang2
```
**Keterangan**  
Fungsi dbinom yang digunakan untuk membuat plot kepadatan (density plot) binomial yang pada dasarnya digunakan karena faktor pasien, p_sembuh dan sembuh.  
**Hasil**  
![2a.png](https://drive.google.com/uc?export=view&id=1tL9zYkASPkuFu_k9YgHmUa_UOHgRuPt8)
## B
Gambarkan grafik histogram berdasarkan kasus tersebut.
## Jawab
```R
set.seed(0)
hist(rbinom(sembuh,pasien,p_sembuh),xlab="X",ylab="Frequency",main="Histogram of Binomial")
```
**Keterangan**  
Fungsi rbinom pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi binomial.  
**Hasil**  
Menggunakan seet.seed (0) dia tidak akan berubah  
![2b-1.png](https://drive.google.com/uc?export=view&id=1qf1s006EI6MtmOWH2VbJCt12BSf4sTlj)  
Tidak menggunakan seet seed (0)  
![2b-2.png](https://drive.google.com/uc?export=view&id=1uYijFmsTN7cSQnPtOQdEmPBAAkfgVam5)  
## C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
## Jawab
```R
E=pasien*p_sembuh
E
Var=pasien*p_sembuh*(1-p_sembuh)
Var
```
**Keterangan**  
Untuk referensi rumus saya melihat dari sumber berikut:  
https://www.rumusstatistik.com/2012/07/rumus-distribusi-binomial.html  
**Hasil**  
![2c.png](https://drive.google.com/uc?export=view&id=1PIBu7wNExc1FpKaxLC6efNShw6tdx20S)
# Soal Nomor 3 
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
## A
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
## Jawab
```R
history_bayilahir=4.5
peluang_bayilahir=6
peluang3=dpois(peluang_bayilahir,history_bayilahir)
peluang3
```
**Keterangan**  
Fungsi dpois yang digunakan untuk membuat plot kepadatan (density plot) poisson yang pada dasarnya digunakan karena faktor history_bayilahir dan peluang_bayilahir.  
**Hasil**
![3a.png](https://drive.google.com/uc?export=view&id=1HGhCWTXy5a9nVZIP6DWbka2Igwkro3_p)
## B
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
## Jawab
```R
set.seed(0)
n=356
hist(rpois(n,history_bayilahir),main="Histogram of Poisson")
```
**Keterangan**  
Fungsi rpois pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi poisson.  
**Hasil**  
Menggunakan seet.seed (0) dia tidak akan berubah  
![3b-1.png](https://drive.google.com/uc?export=view&id=1BOoLQ_Ohd7uLM97Wt68iuy6E8OSm_XlD)  
Tidak menggunakan seet seed (0)  
![3b-1.png](https://drive.google.com/uc?export=view&id=1ncqsdxl6-f8RfRXvegAwyUnuYIHzwQx5)
## C
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
## Jawab  
Jadi, kesimpulan dari perbandingan poin a dan b adalah kurang lebih sama karena nilai proporsi yang didapatkan di poin A berada dalam range proporsi yang ada di poin B yaitu 0.10-0.15. Oleh karena itu, pengaruh perhitungan dengan estimasi selama 365 hari memberikan hasil yang mendekati dengan peluang bayi akan dilahirkan keesokan harinya.  
## D
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
## Jawab
```R
E=Var=history_bayilahir
E
Var
```
**Keterangan**  
Untuk referensi rumus saya melihat dari sumber berikut: 
https://www.rumusstatistik.com/2012/07/rumus-distribusi-poisson.html  
**Hasil**
![3d.png](https://drive.google.com/uc?export=view&id=1zCHKcQcKmt22seYZaiox2CxkoWPm6XyS)
# Soal Nomor 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
## A
Fungsi Probabilitas dari Distribusi Chi-Square.
## Jawab
```R
x=2
v=10
peluang4=dchisq(x,v,ncp=0,log=FALSE)
peluang4
```
**Keterangan**  
Fungsi dchisq yang digunakan untuk membuat plot kepadatan (density plot) chi-squeare yang pada dasarnya digunakan karena faktor x dan v.  
**Hasil**  
![4a.png](https://drive.google.com/uc?export=view&id=1G4W3oyX2v5SEOIAZP9lyTxmcCJ4gHCDg)  
## B
Histogram dari Distribusi Chi-Square dengan 100 data random.
## Jawab
```R
set.seed(0)
hist(rchisq(v,n=100),xlab="X", ylab="V", main="Histogram of Chis-quare")
```
**Keterangan**  
Fungsi rgeom pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi chis-quare.  
**Hasil**
Menggunakan seet.seed (0) dia tidak akan berubah  
![4b-1.png](https://drive.google.com/uc?export=view&id=1FqjvXpSxO31VLNnIo9WgXWfD_9ravyEq)  
Tidak menggunakan seet seed (0)  
![4b-2.png](https://drive.google.com/uc?export=view&id=1jRm5GYIWSII7vtFue9OVjnr3kV9ZUqmz)
## C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
## Jawab
```R
E=v
E
Var=v*2
Var
```
**Keterangan**  
Untuk referensi rumus saya melihat dari sumber berikut:  
https://www.rumusstatistik.com/2013/07/distribusi-khi-kuadrat-chi-square.html  
**Hasil**
![4c.png](https://drive.google.com/uc?export=view&id=1sWNSgHBdVqEMgsceCUYTGeBSZlc5Xo2o)
# Soal Nomor 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
## A
Fungsi Probabilitas dari Distribusi Exponensial
## Jawab  
```R
lambda = 3
set.seed(1)
rexp(lambda)
```  
**Keterangan**  
**Hasil**  
![5a.png](https://drive.google.com/uc?export=view&id=1usWFd-fgVy-Zef91VB68_9tYurRkkvoq)  
## B
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
## Jawab  
```R
par(mfrow = c(2,2))

set.seed(1)
hist(rexp(10))

set.seed(1)
hist(rexp(100))

set.seed(1)
hist(rexp(1000))

set.seed(1)
hist(rexp(10000))
```  
**Keterangan**  
**Hasil**  
![5b.png](https://drive.google.com/uc?export=view&id=1eHbLuhyRoKVNK9MBPsKDFgPKuHrQ0fU3)  
## C
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3 Petunjuk:
● Gunakan set.seed(1)
● Gunakan fungsi bawaan R
## Jawab  
```R
lambda = 3
set.seed(1)
rataan <- 1 / lambda
rataan
set.seed(1)
varian <- 1 / (lambda * lambda)
varian
``` 
**Keterangan**  
**Hasil**  
![5c.png](https://drive.google.com/uc?export=view&id=1wEO2YJPLNcE7z5Nj4Lzn8_EZbaUqju-H)  
# Soal Nomor 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
## A
Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan :
X1 = Dibawah rata-rata
X2 = Diatas rata-rata
Contoh data :
11
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6
## Jawab  
```R
n = 100
m = 50
sd = 8
x1 = 0
x2 = 0

par(mfrow = c(2,1))
data = rnorm(n=n, mean=m, sd=sd)
z_array = c()

for (d in data)
{
  z = (d - m)/sd
  z_array = append(z_array, z)
  
  if (d < m)
  {
    x1 = x1 + 1
  }
  else
  {
    x2 = x2 + 1
  }
}

result = plot(z_array, type='l')
paste("Rata-rata adalah", m)
paste("x1 adalah", x1)
paste("x2 adalah", x2)
```  
**Keterangan**  
**Hasil**  
![6a-1.png](https://drive.google.com/uc?export=view&id=1AET4xxY2yZ_Cm2TbAKahxWpcBWXoGCMf)  
![6a-2.png](https://drive.google.com/uc?export=view&id=1jvtMz4rxclt7HakjZILijVP4eAY4ZQxe)  
## B
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram
## Jawab  
```R
h = hist(rnorm(100, 50, 8), breaks = 50, main="5025201035_Fian Awamiry Maulana_C_DNhistogram")
```  
**Keterangan**  
**Hasil**  
![6b.png](https://drive.google.com/uc?export=view&id=1r66_XCr37gaAURPImCPtbVuRRSIh32E8)  
## C
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
## Jawab  
```R
varian = sd * sd
paste("varian adalah", varian)
```  
**Keterangan**  
**Hasil**  
![6c.png](https://drive.google.com/uc?export=view&id=1BlrhSCdNQB_Qyu-qeqLgMVf-0ukoYMEv)  
