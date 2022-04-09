# P1_Probstat_C_5025201035
Nama | NRP | Kelas
-----|-----|------
Fian Awamiry Maulana | 5025201035 | Probabilitas dan Statistik (C)

# Soal Nomor 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya
# A
Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
# Jawab 
```R
x=3
p=0.20
peluang=dgeom(x,p) 
peluang
```
# B
mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
# Jawab 
```R
mean(rgeom(n = 10000, p=0.20) == 3
```
# C
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
# Jawab 
Jadi, kesimpulan dari poin a dan b adalah ...
# D
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
# Jawab 
```R
set.seed(0)
#Menggunakan fungsi rgeom
hist(rgeom(x,p),xlab="X",main="Histogram of Geometric")
```
# E
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
# Jawab 
```R
E=1/p 
E
var=(1-p)/p^2 
var
```
# Soal Nomor 2 
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
# A
Peluang terdapat 4 pasien yang sembuh.
# Jawab
```R
pasien=20
p_sembuh=0.2
sembuh=4
peluang2=dbinom(sembuh,pasien,p_sembuh,log=FALSE)
peluang2
```
# B
Gambarkan grafik histogram berdasarkan kasus tersebut.
# Jawab
```R
set.seed(0)
hist(rbinom(sembuh,pasien,p_sembuh),xlab="X",ylab="Frequency",main="Histogram of Binomial")
```
# C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
# Jawab
```R
E=pasien*p_sembuh
E
Var=pasien*p_sembuh*(1-p_sembuh)
Var
```
# Soal Nomor 3 
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
# A
Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
# Jawab
```R
history_bayilahir=4.5
peluang_bayilahir=6
peluang3=dpois(peluang_bayilahir,history_bayilahir)
peluang3
```
# B
simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
# Jawab
```R
set.seed(0)
n=356
hist(rpois(n,history_bayilahir),main="Histogram of Poisson")
```
# C
dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
# Jawab
Jadi, kesimpulan dari perbandingan poin a dan b adalah ...
# D
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
# Jawab
```R
E=Var=history_bayilahir
E
Var
```
# Soal Nomor 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
# A
Fungsi Probabilitas dari Distribusi Chi-Square.
# Jawab
```R
x=2
v=10
peluang4=dchisq(x,v,ncp=0,log=FALSE)
peluang4
```
# B
Histogram dari Distribusi Chi-Square dengan 100 data random.
# Jawab
```R
set.seed(0)
hist(rchisq(x,v,n=100),main="Histogram of Chis-quare")
```
# C
Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
# Jawab
```R
E=v
E
Var=v*2
Var
```
# Soal Nomor 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
# A
Fungsi Probabilitas dari Distribusi Exponensial
# Jawab
# B
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
# Jawab
# C
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3 Petunjuk:
● Gunakan set.seed(1)
● Gunakan fungsi bawaan R

# Jawab

# Soal Nomor 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
# A
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
# Jawab
# B
Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram
# Jawab
# C
Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
# Jawab
