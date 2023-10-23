/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 4.
Pada program ini, didesain kalkulator yang dapat melakukan perhitungan matematika sederhana
seperti penjumlahan, pengurangan, perkalian, dan pembagian. Program kalkulator ini akan
mengambil beberapa input dari pegguna, diantaranya:
1. Input pilihan operator, pengguna memilih jenis operator matematika yang diinginkan,
2. Input angka 1 dan angka 2, pengguna memasukan dua angka yang akan diproses oleh kalkulator,
Setelah program menerima input dari pengguna, program akan menampilkan hasil perhitungannya.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 23 Oktober 2023
*/

/*
Inisialisasi library untuk menerima input dari pengguna,
method yang digunakan dari library ini yaitu stdout.write() dan stdin.readLineSync().
*/
import 'dart:io';

/*
Inisialisasi variabel untuk menyimpan data serta inisialisasi enum untuk menyimpan
sekumpulan nilai konstan yang akan digunakan untuk proses conditional operasi.
*/
enum Operasi {penjumlahan, pengurangan, perkalian, pembagian}
late num angka1, angka2, hasilOperasi, hasilAkhir;
late String jenisOperator;
late Enum operasi;

void main(List<String> args) {
  menuPilihOperasi(); //Method pemilihan jenis operator matematika
  hasilAkhir = menuPerhitungan(); //Menyimpan nilai return dari method perhitungan matematika

  /*
  Menampilkan output hasil perhitungan dengan String Interpolation,
  contoh output yang dihasilkan:
    // 70.5 + 5.5 = 76.0
  */
  print("\n$angka1 $jenisOperator $angka2 = $hasilAkhir\n");

  /*
  Contoh output program kalkulator sederhana secara keseluruhan:
    // KALKULATOR
    // 1. Penjumlahan
    // 2. Pengurangan
    // 3. Perkalian
    // 4. Pembagian
    // Pilih operasi perhitungannya (1/2/3/4): 1

    // Masukan angka pertama : 70.5
    // Masukan angka kedua   : 5.5

    // 70.5 + 5.5 = 76.0
  */
}

//Inisialisasi method pemilihan jenis operator matematika
void menuPilihOperasi(){
  print("\nKALKULATOR");
  print("1. Penjumlahan");
  print("2. Pengurangan");
  print("3. Perkalian");
  print("4. Pembagian");
  //Inisialisasi kode untuk meminta input String dari pengguna
  stdout.write("Pilih operasi perhitungannya (1/2/3/4): ");
  String pilihOperasi = stdin.readLineSync().toString();
  /*
  Proses conditional input String dari pengguna. Dalam proses ini, dilakukan pengecekan input
  pengguna. Apabila kondisi true terhadap salah satu kondisi, maka akan dilakukan proses deklarasi
  enum "Operasi" kepada variabel "operasi" untuk proses perhitungan dan akan memproses method untuk 
  input angka. Apabila kondisi false, maka pengguna akan diminta untuk memasukan kembali inputan 
  hingga kondisi bernilai true.
  */
  if(pilihOperasi == "1"){
    operasi = Operasi.penjumlahan;
    jenisOperator = "+";
    menuInputAngka(); //Method input number dari pengguna
  } else if(pilihOperasi == "2"){
    operasi = Operasi.pengurangan;
    jenisOperator = "-";
    menuInputAngka(); //Method input number dari pengguna
  } else if(pilihOperasi == "3"){
    operasi = Operasi.perkalian;
    jenisOperator = "*";
    menuInputAngka(); //Method input number dari pengguna
  } else if(pilihOperasi == "4"){
    operasi = Operasi.pembagian;
    jenisOperator = "/";
    menuInputAngka(); //Method input number dari pengguna
  } else{
    print("Pilihan tidak valid!");
    menuPilihOperasi();
  }
}

//Inisialisasi method input number dari pengguna
void menuInputAngka(){
  /*
  Dalam proses ini, pengguna diminta untuk memasukan dua angka yang akan diproses oleh program.
  Selain itu, inputan dari pengguna akan dirubah dari String menjadi number karena String tidak
  bisa diproses oleh operator matematika. Setelah pengguna memasukan dua angka, program akan
  memproses kedua angka tersebut sesuai dengan pilihan operator dari pengguna.
  */
  stdout.write("\nMasukan angka pertama : ");
  angka1 = num.tryParse(stdin.readLineSync().toString())!;
  stdout.write("Masukan angka kedua   : ");
  angka2 = num.tryParse(stdin.readLineSync().toString())!;
  menuPerhitungan(); //Method untuk melakukan perhitungan matematika
}

//Inisialisasi method untuk melakukan perhitungan matematika
num menuPerhitungan(){
  /*
  Proses ini merupakan conditional operasi, disini akan dilakukan pengecekan isi variabel "operasi"
  dengan nilai pada enum "Operasi". Apabila nilai "operasi" == case enum "Operasi", maka case tersebut
  akan dijalankan. Case yang ada berisi operasi matematika sederhana. Apabila case telah dijalankan, maka
  proses perhitungan matematika telah selesai dilakukan dan nilai perhitungan akan di return.
  */
  switch (operasi) {
    case Operasi.penjumlahan:
      hasilOperasi = angka1 + angka2;
      break;
    case Operasi.pengurangan:
      hasilOperasi = angka1 - angka2;
      break;
    case Operasi.perkalian:
      hasilOperasi = angka1 * angka2;
      break;
    case Operasi.pembagian:
      hasilOperasi = angka1 / angka2;
      break;
  }
  return hasilOperasi;
}