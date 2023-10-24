/*
Program ini merupakan latihan dart fundamental "function" bagian 3.
Pada program ini, disusun sebuah program menggunakan function yang dapat mengembalikan nilai
apabila function tersebut dipanggil. Hasil akhir dari program yaitu dapat menampilkan nilai
kembalian dari pemanggilan function.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Inisialisasi dan deklarasi variabel sebagai nilai inputan untuk function
  String nama = "Achmad Faiz Alawi";
  String domisili = "Pochinki";
  String hobi = "Coding";
  int umur = 10;

  //Memanggil dan menginisialisasi function kedalam variabel
  String data = dataDiri(nama, umur, domisili, hobi);

  //Menampilkan nilai kembalian dari function berdasarkan nilai inputan yang diberikan
  /*
  Contoh output yang dihasilkan dari program: 
    // Nama saya Achmad Faiz Alawi, umur saya 10 tahun, saya berdomisili di Pochinki, dan saya memiliki hobi Coding
  */
  print(data);
}

//Inisialisasi function yang menerima inputan dan dapat mengembalikan nilai hasilnya
String dataDiri(String namaNya, int umurNya, String domisiliNya, String hobiNya){
  //Proses pengembalian hasil proses function kepada pemanggil function
  return "Nama saya $namaNya, umur saya $umurNya tahun, saya berdomisili di $domisiliNya, dan saya memiliki hobi $hobiNya";
}