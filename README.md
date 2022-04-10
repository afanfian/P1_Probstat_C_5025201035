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
peluang=dgeom(x,p) 
peluang
```
**Keterangan**  
**Hasil**  
## B
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
## Jawab 
```R
mean(rgeom(n = 10000, p=0.20) == 3
```
**Keterangan**  
Fungsi rgeom pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi geometrik
**Hasil**  
![1b.png](https://drive.google.com/uc?export=view&id=155gyjLwXgZzcC8SY34sqRgrAR9H1Ljtu)
## C
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
## Jawab 
Jadi, kesimpulan dari poin a dan b adalah ...
## D
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
## Jawab 
```R
set.seed(0)
#Menggunakan fungsi rgeom
hist(rgeom(x,p),xlab="X",main="Histogram of Geometric")
```
**Keterangan**  
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
**Hasil**
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
Fungsi rbinom pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi binomial  
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
Fungsi rpois pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi poisson  
**Hasil**  
Menggunakan seet.seed (0) dia tidak akan berubah  
![3b-1.png](https://drive.google.com/uc?export=view&id=1BOoLQ_Ohd7uLM97Wt68iuy6E8OSm_XlD)  
Tidak menggunakan seet seed (0)  
![3b-1.png](https://drive.google.com/uc?export=view&id=1ncqsdxl6-f8RfRXvegAwyUnuYIHzwQx5)
## C
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
## Jawab
Jadi, kesimpulan dari perbandingan poin a dan b adalah ...
## D
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
## Jawab
```R
E=Var=history_bayilahir
E
Var
```
**Keterangan**  
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
Fungsi rgeom pada dasarnya digunakan untuk membangkitkan bilangan acak (generating random number) dalam distribusi chis-quare  
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
**Hasil**
![4c.png](https://drive.google.com/uc?export=view&id=1sWNSgHBdVqEMgsceCUYTGeBSZlc5Xo2o)
# Soal Nomor 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
## A
Fungsi Probabilitas dari Distribusi Exponensial
## Jawab
**Keterangan**  
**Hasil**
## B
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
## Jawab
**Keterangan**  
**Hasil**
## C
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3 Petunjuk:
● Gunakan set.seed(1)
● Gunakan fungsi bawaan R
## Jawab
**Keterangan**  
**Hasil**

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
**Keterangan**  
**Hasil**
## B
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram
## Jawab
**Keterangan**  
**Hasil**
## C
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
## Jawab
**Keterangan**  
**Hasil**
