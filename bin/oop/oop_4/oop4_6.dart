///Jangan running file ini karena file ini hanya berisi blue print object saja,
///Silahkan running keseluruhan program ini melalui function [main] pada [oop4_1.dart].

//Deklarasi class yang dijadikan sebagai blue print dengan konsep Abstrack
abstract class Titan{
  //Inisialisasi variabel blue print dengan konsep Enkapsulasi
  late num _powerPoint;
  late String _namaTitan, _kemampuanTitan;
  
  //Inisialisasi metode setter untuk memberikan nilai pada atribut blue print
  set setPowerPoint(num powerPoint){
    _powerPoint = powerPoint;
  }
  set setNamaTitan(String namaTitan){
    _namaTitan = namaTitan;
  }
  set setKemampuanTitan(String kemampuanTitan){
    _kemampuanTitan = kemampuanTitan;
  }
  //Inisialisasi metode getter untuk mengakses nilai pada atribut blue print
  num get powerPoint{
    return _powerPoint;
  }
  String get namaTitan{
    return _namaTitan;
  }
  String get kemampuanTitan{
    return _kemampuanTitan;
  }

  //Deklarasi constructor untuk membantu inisialisasi atribut pada blue print
  Titan({required num powerPoint, required String namaTitan, required String kemampuanTitan}){
    setPowerPoint = powerPoint;
    setNamaTitan = namaTitan;
    setKemampuanTitan = kemampuanTitan;
  }

  //Inisialisasi method untuk menampilkan pesan kemampuan dari object yang telah dibuat
  void showProfile(){
    print("Nama        : $namaTitan");
    print("Power point : $powerPoint PP");
    print("Kemampuan   : $kemampuanTitan");
  }
}