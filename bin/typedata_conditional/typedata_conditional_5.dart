/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 5.
Pada program ini, terdapat kondisi ternary dimana pengguna akan diminta untuk menginstall 
aplikasi dengan jawaban Y/T. Apabila pengguna memberikan jawaban (Y) maka akan menampilkan 
pesan "Anda akan menginstall aplikasi Dart", jika pengguna memberikan jawaban (T) maka akan 
keluar pesan "Aborted". Apabila pengguna memberikan jawaban selain Y/T, maka akan keluar pesan
"Pilihan tidak valid!" dan pengguna akan diminta memberikan jawaban ulang.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 23 Oktober 2023
*/

/*
Inisialisasi library untuk menerima input dari pengguna,
method yang digunakan dari library ini yaitu stdout.write() dan stdin.readLineSync().
*/
import 'dart:io';

void main(List<String> args) {
  menuInstaller(); //Memanggil method untuk melakukan penginstalan aplikasi

  /*
  Contoh output program penginstalan aplikasi:
    // DART APP INSTALLER
    // Apakah anda ingin menginstall aplikasi Dart (Y/T)? y
    // Anda akan menginstall aplikasi Dart
  */
}

//Inisialisasi method untuk melakukan penginstalan aplikasi
void menuInstaller(){
  print("\nDART APP INSTALLER");
  stdout.write("Apakah anda ingin menginstall aplikasi Dart (Y/T)? ");
  String installer = stdin.readLineSync().toString().toUpperCase();
  //Pengecekan kondisi inputan pengguna
  if(installer == "Y"){ 
    //Saat kondisi bernilai true saat pengguna memberikan jawaban "Y"
    print("Anda akan menginstall aplikasi Dart\n");
  } else if(installer == "T"){
    //Saat kondisi bernilai true lainnya saat pengguna memberikan jawaban "T"
    print("Aborted\n");
  } else{
    //Saat kondisi bernilai true saat pengguna memberikan jawaban selain Y/T
    print("Pilihan tidak valid!");
    menuInstaller(); //Method kembali dipanggil agar pengguna memberikan jawaban kembali
  }
}