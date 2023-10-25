///Jangan running file ini karena file ini hanya berisi blue print object saja,
///Silahkan running keseluruhan program ini melalui function [main] pada [oop3_1.dart].

class Lingkaran{
  //Inisialisasi variabel blue print dengan menggunakan konsep Enkapsulasi
  late num _jariJariNya;
  final num phi = 3.14; //Inisialisasi menggunakan final untuk menghindari perubahan nilai variabel

  //Inisialisasi metode setter untuk memberikan nilai pada atribut blue print
  set jariLingkaran(num jariLingkaran){
    /*
    Validasi nilai masukan untuk menghindari perhitungan nilai minus. Apabila nilai inputan bernilai
    minus, maka akan dikalikan dengan (-1) agar nilai menjadi positif.
    */
    if(jariLingkaran < 0 ){
      jariLingkaran *= -1;
    }
    _jariJariNya = jariLingkaran;
  }
  //Inisialisasi metode getter untuk mengakses nilai pada atribut blue print
  num get jariLingkaran{
    return _jariJariNya;
  }

  //Deklarasi constructor untuk membantu inisialisasi atribut pada blue print
  Lingkaran({required num jariJari}){
    jariLingkaran = jariJari;
  }  

  //Inisialisasi method untuk menghitung luas lingkaran berdasarkan inputan yang telah diberikan
  void luasLingkaran(){
    //Inisialisasi variabel dengan rumus untuk menyimpan hasil perhitungan luas lingkaran
    num luasLingkaran = phi * _jariJariNya;
    //Menampilkan pesan hasil perhitungan luas lingkaran dengan dua angka dibelakang koma
    /*
    Output yang dihasilkan dari program:
      // Luas lingkaran : 31.40
      // Luas lingkaran : 31.40
    */
    print("Luas lingkaran : ${luasLingkaran.toStringAsFixed(2)}");
  }
}