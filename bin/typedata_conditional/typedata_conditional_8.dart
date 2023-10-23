/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 8.
Pada program ini, terdapat bagian untuk menerima input pengguna seperti nama lengkap,
tempat, tanggal, bulan, dan tahun lahir. Dari seluruh inputan tersebut, akan dilakukan
penggabungan data tempat, tanggal, bulan, dan tahun lahir kedalam satu kalimat String 
utuh menggunakan String Interpolation.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 23 Oktober 2023
*/

/*
Inisialisasi library untuk menerima input dari pengguna,
method yang digunakan dari library ini yaitu stdout.write() dan stdin.readLineSync().
*/
import 'dart:io';

//Inisialisasi variabel untuk menyimpan inputan String dan Integer dari pengguna
late String nama, tempatLahir, bulanLahirStr;
late int tanggalLahir, bulanLahirInt, tahunLahir;

void main(List<String> args) {
  dataMahasiswa(); //Memanggil method untuk pendataan mahasiswa baru

  /*
  Menampilkan output dengan String Interpolation,
  contoh output yang dihasilkan:
    // Halo ACHMAD FAIZ ALAWI...
    // Kamu lahir di POCHINKI, 12 Desember 2012
  */
  print("\nHalo $nama...");
  print("Kamu lahir di $tempatLahir, $tanggalLahir $bulanLahirStr $tahunLahir\n");
}

//Inisialisasi method untuk mengambil data dari pengguna
void dataMahasiswa(){
  print("\nPendataan mahasiswa baru...");
  stdout.write("Nama lengkap: ");
  nama = stdin.readLineSync().toString().toUpperCase(); //Meminta data String nama lengkap
  
  print("\nSilahkan masukan data kelahiran kamu...");
  stdout.write("Tempat  : "); 
  tempatLahir = stdin.readLineSync().toString().toUpperCase(); //Meminta data String tempat lahir
  stdout.write("Tanggal : ");
  tanggalLahir = int.parse(stdin.readLineSync().toString()); // Meminta data integer tanggal lahir
  stdout.write("Bulan   : ");
  bulanLahirInt = int.parse(stdin.readLineSync().toString()); // Meminta data integer bulan lahir
  stdout.write("Tahun   : ");
  tahunLahir = int.parse(stdin.readLineSync().toString()); // Meminta data integer tahun lahir

  namaBulan(bulanLahirInt); //Memanggil method untuk merubah nilai bulan lahir integer menjadi String
}

//Inisialisasi method untuk merubah nilai integer bulan lahir menjadi bentuk String bentuk kalimat
void namaBulan(int bulan){ 
  //Method meminta data bulan dalam bentuk integer 
  //Inisialisasi bentuk String kedalam variabel
  switch (bulan) {
    case 1:
      bulanLahirStr = "Januari";
      break;
    case 2:
      bulanLahirStr = "Februari";
      break;
    case 3:
      bulanLahirStr = "Maret";
      break;
    case 4:
      bulanLahirStr = "April";
      break;
    case 5:
      bulanLahirStr = "Mei";
      break;
    case 6:
      bulanLahirStr = "Juni";
      break;
    case 7:
      bulanLahirStr = "Juli";
      break;
    case 8:
      bulanLahirStr = "Agustus";
      break;
    case 9:
      bulanLahirStr = "September";
      break;
    case 10:
      bulanLahirStr = "Oktober";
      break;
    case 11:
      bulanLahirStr = "November";
      break;
    case 12:
      bulanLahirStr = "Desember";
      break;
  }
}