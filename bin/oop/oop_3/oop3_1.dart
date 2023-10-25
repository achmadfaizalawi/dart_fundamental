/// Program ini merupakan latihan dart fundamental "object-oriented programming" bagian 3.
/// Pada program ini, terdapat blue print yang bernama [Lingkaran] yang akan dipanggil kedalam 
/// sebuah object yang bernama [lingkaran]. Pada saat memanggil blue print [Lingkaran], pengguna
/// diminta mengisi parameter [jariJari] sebagai bagian dari atribut [Lingkaran]. Parameter [jariJari]
/// dapat diisi dengan nilai positif maupun nilai negatif. Namun apabila pengguna memasukan nilai
/// negatif, setter paramater [jariJari] akan melakukan validasi agar nilai inputan menjadi positif.
/// Selanjutnya, hasil inisialisasi tersebut dapat ditampilkan apabila memanggil method yang tersedia. 

/// Latihan dart fundamental "object-oriented programming" bagian 2 memiliki 2 file, diantara:
/// 1. [oop3_1.dart], berisi function [main] atau file utama dari latihan ini (running program di file ini),
/// 2. [oop3_2.dart], berisi blue print [Lingkaran] yang digunakan untuk membuat object [lingkaran].

// Penyusun: Achmad Faiz Alawi
// Terakhir diubah: 25 Oktober 2023

///Deklarasi library untuk menghubungkan file ini dengan file [oop3_2.dart]
import 'oop3_2.dart';

void main(List<String> args) {
  //Inisialisasi blue print kepada object baru dengan parameter masukan positif
  var lingkaran1 = Lingkaran(jariJari: 10);
  //Menampilkan pesan luas lingkaran dengan parameter masukan positif
  lingkaran1.luasLingkaran();

  //Inisialisasi blue print kepada object baru dengan parameter masukan negarif 
  var lingkaran2 = Lingkaran(jariJari: -10);
  //Menampilkan pesan luas lingkaran dengan parameter masukan negatif
  lingkaran2.luasLingkaran();
}