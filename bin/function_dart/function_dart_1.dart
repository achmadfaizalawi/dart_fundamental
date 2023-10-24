/*
Program ini merupakan latihan dart fundamental "function" bagian 1.
Pada program ini, disusun sebuah program menggunakan function yang dapat mengembalikan nilai
apabila function tersebut dipanggil. Hasil akhir dari program yaitu dapat menampilkan nilai
kembalian dari pemanggilan function.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Memanggil dan menampilkan nilai kembalian dari function
  /*
  Output yang dihasilkan dari program:
    //Halo Sanbers!
  */
  print(teriak());
}

//Inisialisasi function yang memiliki nilai kembalian saat function dipanggil
String teriak(){
  return "Halo Sanbers!"; //Nilai kembaliannya berupa String karena jenis functionnya adalah String
}