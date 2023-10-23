/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 3.
Pada program ini, dilakukan pengambilan dua input String dari pengguna, setelah 
mendapatkan dua input String dari pengguna, kedua String tersebut akan digabungkan
menjadi satu kalimat utuh menggunakan String Interpolation.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 23 Oktober 2023
*/

/*
Inisialisasi library untuk menerima input dari pengguna,
method yang digunakan dari library ini yaitu stdout.write() dan stdin.readLineSync().
*/
import 'dart:io';
void main(List<String> args) {
  /*
  Inisialisasi kode untuk menerima input pengguna berupa nama depan dan nama belakang,
  terdapat method .toString() dan .toUpperCase(),
  - .toString() untuk merubah input pengguna menjadi tipe data String,
  - .toUpperCase() untuk merubah ukuran huruf pada kalimat menjadi huruf besar.
  */
  stdout.write("\nMasukan nama depan: ");
  String namaDepan = stdin.readLineSync().toString().toUpperCase();
  stdout.write("Masukan nama belakang: ");
  String namaBelakang = stdin.readLineSync().toString().toUpperCase();

  /*
  Menampilkan output menggunakan String Interpolation,
  hasil pada output akan menampilkan nama depan dan nama belakang pengguna yang digabungkan,
  contoh output yang dihasilkan yaitu:
    // Nama lengkap anda adalah: "ACHMAD FAIZ ALAWI"
  */
  print("Nama lengkap anda adalah: $namaDepan $namaBelakang\n");

  /*
  Contoh output program secara keseluruhan
    // Masukan nama depan: achmad
    // Masukan nama belakang: faiz alawi
    // Nama lengkap anda adalah: ACHMAD FAIZ ALAWI
  */ 
}