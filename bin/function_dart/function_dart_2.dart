/*
Program ini merupakan latihan dart fundamental "function" bagian 2.
Pada program ini, disusun sebuah program menggunakan function untuk menghitung hasil perkalian.
Function harus dipanggil dengan parameter berupa angka yang akan dikalikan, angka yang akan 
dikalikan tersebut didapatkan dari hasil input pengguna. Hasil akhir dari program ini akan
menampilkan output berupa hasil perkalian kedua angka tersebut.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

/*
Inisialisasi library untuk menerima input dari pengguna,
method yang digunakan dari library ini yaitu stdout.write() dan stdin.readLineSync().
*/
import 'dart:io';

void main(List<String> args) {
  print("\nKALKULATOR PERKALIAN");
  //Proses meminta dua angka sebagai input dari pengguna agar angka dapat dikalikan
  stdout.write("Masukan Angka 1: ");
  num angkaPertama = num.parse(stdin.readLineSync().toString());
  stdout.write("Masukan Angka 2: ");
  num angkaKedua = num.parse(stdin.readLineSync().toString());

  //Memanggil function perkalian dan inisialisasi parameter functionnya
  num hasilPerkalian = perkalian(angka1: angkaPertama, angka2: angkaKedua);
  //Menampilkan pesan dari hasil perkalian kedua angka
  /*
   Contoh output yang dihasilkan dari program:
    // KALKULATOR PERKALIAN
    // Masukan angka 1: 100
    // Masukan angka 2: 2000

    // Hasil 100 x 2000 = 200000
  */
  print("\nHasil dari $angkaPertama x $angkaKedua = $hasilPerkalian\n");
}

//Inisialisasi function untuk memproses operasi perkalian
num perkalian({required num angka1, required num angka2}){
  return angka1 * angka2; //Mengembalikan nilai hasil perkalian antara angka 1 dan angka 2
}