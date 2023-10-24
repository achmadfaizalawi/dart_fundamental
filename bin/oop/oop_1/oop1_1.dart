/// Program ini merupakan latihan dart fundamental "object-oriented programming" bagian 1.
/// Pada program ini, terdapat blue print yang bernama [Lingkaran] yang akan dipanggil kedalam 
/// sebuah object yang bernama [lingkaran]. Pada sebuah object [lingkaran], akan dihitung luas dari
/// object [lingkaran] tersebut dengan memberikan parameter pada blue print. Hasil akhir dari program
/// ini adalah nilai luas [lingkaran] yang didapat dengan memanggil method dari blue print [Lingkaran].

/// Latihan dart fundamental "object-oriented programming" bagian 1 memiliki 2 file, diantara:
/// 1. [oop1_1.dart], berisi function [main] atau file utama dari latihan ini (running program di file ini),
/// 2. [oop1_2.dart], berisi blue print [Lingkaran] yang digunakan untuk membuat object lingkaran.

// Penyusun: Achmad Faiz Alawi
// Terakhir diubah: 24 Oktober 2023

///Deklarasi library untuk menghubungkan file ini dengan file [oop1_2.dart]
import 'oop1_2.dart';

void main(List<String> args) {
  //Inisialisasi blue print 'Lingkaran' menjadi object lingkaran'
  var lingkaran = Lingkaran();
  //Memanggil method dari object 'lingkaran' untuk menghitung luas
  lingkaran.luas(alasNya: 20, tinggiNya: 30);
}