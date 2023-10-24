///Jangan running file ini karena file ini hanya berisi blue print object saja,
///Silahkan running keseluruhan program ini melalui function [main] pada [oop1_1.dart].

//Deklarasi blue print untuk membuat object
class Lingkaran{
  //Inisialisasi variabel kosong yang akan diisi saat membuat object
  late num _alas, _tinggi, _luasLingkaran; //Variabel dibungkus dengan konsep Enkapsulasi
  final num _setengah = 0.5; //Inisialisasi nilai 1/2 untuk menghitung luas lingkaran

  //Method blue print untuk menghitung luas lingkaran
  void luas({required num alasNya, required num tinggiNya}){
    //Inisialisasi hasil input method kedalam variabel blue print
    _alas = alasNya;
    _tinggi = tinggiNya;
    _luasLingkaran = _setengah * _alas * _tinggi;

    //Menampilkan pesan luas lingkaran setelah dihitung menggunakan method
    /*
    Output yang dihasilkan dari program:
      // Luas lingkaran: 300.0 m^2
    */
    print("Luas lingkaran: $_luasLingkaran m^2");
  }
}