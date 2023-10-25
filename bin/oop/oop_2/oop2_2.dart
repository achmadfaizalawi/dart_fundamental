///Jangan running file ini karena file ini hanya berisi blue print object saja,
///Silahkan running keseluruhan program ini melalui function [main] pada [oop2_1.dart].

//Deklarasi blue print untuk membuat object
class DataDiri{
  //Inisialisasi variabel kosong yang akan diisi saat membuat object
  //Variabel yang dibuat dinisialisasi dengan konsep Enkapsulasi
  late num _id;
  late String _nama, _departemen;

  //Deklarasi constructor untuk membantu inisialisasi atribut pada blue print
  DataDiri({required num id, required  String nama, required String departemen}){
    //Inisialisasi variabel pada constructor dengan atribut blue print
    _id = id;
    _nama = nama;
    _departemen = departemen;
  }

  //Inisialisasi method untuk menampilkan hasil input dari contructor blue print
  /*
  Output yang dihasilkan dari program:
    // ID         : 1
    // Nama       : Achmad Faiz Alawi
    // Departemen : Flutter Developer
  */
  void tampilkanDataDiri(){
    print("ID         : $_id");
    print("Nama       : $_nama");
    print("Departemen : $_departemen\n");
  }
} 