/// Program ini merupakan latihan dart fundamental "object-oriented programming" bagian 2.
/// Pada program ini, terdapat blue print yang bernama [DataDiri] yang akan dipanggil kedalam 
/// sebuah object yang bernama [karyawan]. Pada sebuah object [karyawan], akan diinisialisasi
/// atribut dari diantaranya id, nama, dan departemen. Selanjutnya, hasil inisialisasi tersebut 
/// dapat ditampilkan apabila memanggil method yang tersedia.

/// Latihan dart fundamental "object-oriented programming" bagian 2 memiliki 2 file, diantara:
/// 1. [oop2_1.dart], berisi function [main] atau file utama dari latihan ini (running program di file ini),
/// 2. [oop2_2.dart], berisi blue print [DataDiri] yang digunakan untuk membuat object [karyawan].

// Penyusun: Achmad Faiz Alawi
// Terakhir diubah: 25 Oktober 2023

///Deklarasi library untuk menghubungkan file ini dengan file [oop2_2.dart]
import 'oop2_2.dart';

void main(List<String> args) {
  //Memanggil blue print untuk membuat object baru
  var karyawan = DataDiri(id: 1, nama: "Achmad Faiz Alawi", departemen: "Flutter Developer");
  //Menampilkan hasil inisialisasi dari object baru
  karyawan.tampilkanDataDiri();
}