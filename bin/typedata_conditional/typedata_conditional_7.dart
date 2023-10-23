/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 7.
Pada program ini, didesain untuk menerima input String pengguna berupa nama hari untuk 
menampilkan quotes harian. Selain itu, pada program ini terdapat bagian pengecekan apakah 
pengguna telah memberikan inputan atau tidak memberikan inputan. Apabila tidak memberikan 
inputan, maka program akan memberikan peringatan dan meminta inputan kembali kepada pengguna.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 23 Oktober 2023
*/

/*
Inisialisasi library untuk menerima input dari pengguna,
method yang digunakan dari library ini yaitu stdout.write() dan stdin.readLineSync().
*/
import 'dart:io';

/*
Inisialisasi variabel untuk menyimpan inputan String nama dan peran dari pengguna, serta inisialisasi
enum untuk menyimpan pilihan peran pengguna dan sebagai pemroses proses conditional.
*/
enum QuotesHari {senin, selasa, rabu, kamis, jumat, sabtu, minggu}
late String pilihanHari;
late Enum hari;

void main(List<String> args) {
  menuInputPengguna(); //Memanggil method untuk menerima input String hari dari pengguna

  /*
  Contoh output program quotes harian:
    // DAILY QUOTES
    // Selalu ada quotes setiap harinya...
    // Kamu ingin quotes hari apa? rabu

    // Quotes hari RABU
    // Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.
  */
}

//Inisialisasi method untuk menerima inputan String nama hari dari pengguna
void menuInputPengguna(){
  print("\nDAILY QUOTES");
  print("Selalu ada quotes setiap harinya...");
  stdout.write("Kamu ingin quotes hari apa? ");
  pilihanHari = stdin.readLineSync().toString().toUpperCase();
  /*
  Proses pengecekan inputan nama hari dilakukan untuk menghindari nilai null ataupun spasi kosong.
  Apabila pengguna tidak memberikan inputan ataupun hanya memberikan spasi kosong, program akan
  menampilkan pesan peringatan dan program akan kembali meminta inputan dari pengguna.
  */
  if(pilihanHari == null || pilihanHari.trim().isEmpty){
    print("Hari harus diisi!"); //Pesan peringatan
  } else{
    /*
     Pengecekan kondisi ini dilakukan untuk memproses pilihan peran pengguna. Apabila pilihan pengguna
     tidak valid, maka program akan menampilkan pesan peringatan dan program akan kembali meminta inputan 
     dari pengguna.
    */
    if(pilihanHari == "SENIN"){
      hari = QuotesHari.senin;
      menuQuotes(); //Memanggil method selanjutnya untuk menampilkan quotes hari senin
    } else if(pilihanHari == "SELASA"){
      hari = QuotesHari.selasa;
      menuQuotes(); //Memanggil method selanjutnya untuk menampilkan quotes hari selasa
    } else if(pilihanHari == "RABU"){
      hari = QuotesHari.rabu;
      menuQuotes(); //Memanggil method selanjutnya untuk menampilkan quotes hari rabu
    } else if(pilihanHari == "KAMIS"){
      hari = QuotesHari.kamis;
      menuQuotes(); //Memanggil method selanjutnya untuk menampilkan quotes hari kamis
    } else if(pilihanHari == "JUMAT"){
      hari = QuotesHari.jumat;
      menuQuotes(); //Memanggil method selanjutnya untuk menampilkan quotes hari jumat
    } else if(pilihanHari == "SABTU"){
      hari = QuotesHari.sabtu;
      menuQuotes(); //Memanggil method selanjutnya untuk menampilkan quotes hari sabtu
    } else if(pilihanHari == "MINGGU"){
      hari = QuotesHari.minggu;
      menuQuotes(); //Memanggil method selanjutnya untuk menampilkan quotes hari minggu
    } else{
      print("Nama hari tidak valid!"); //Pesan peringatan
      menuInputPengguna();
    }
  }
}

//Inisialisasi method yang berisi quotes harian
void menuQuotes(){
  print("\nQuotes hari $pilihanHari");
  switch (hari) {
    case QuotesHari.senin: //Quotes hari senin
      print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
      break;
    case QuotesHari.selasa: //Quotes hari selasa
      print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
      break;
    case QuotesHari.rabu: //Quotes hari rabu
      print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
      break;
    case QuotesHari.kamis: //Quotes hari kamis
      print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
      break;
    case QuotesHari.jumat: //Quotes hari jumat
      print("Hidup tak selamanya tentang pacar.");
      break;
    case QuotesHari.sabtu: //Quotes hari sabtu
      print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
      break;
    case QuotesHari.minggu: //Quotes hari minggu
      print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
      break;
  }
  print(" "); //Inisialisasi blok kosong sebagai spasi
}