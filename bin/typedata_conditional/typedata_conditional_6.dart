/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 6.
Pada program ini, didesain permainan Werewolf yang meminta dua input String kepada pengguna.
Selain itu, pada program ini terdapat bagian pengecekan apakah pengguna telah memberikan inputan
atau tidak memberikan inputan. Apabila tidak memberikan inputan, maka program akan memberikan
peringatan dan meminta inputan kembali kepada pengguna.

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
late String namaPemain, pilihPeran;
late Enum peranPemain;
enum PeranPermainan {werewolf, penyihir, penjaga}

void main(List<String> args) {
  inputNama(); //Memanggil method untuk masuk kedalam permainan

  /*
  Contoh output program permainan dunia werewolf:
    // DUNIA WEREWOLF
    // Selamat datang di permainan...
    // Masukan nama kamu: achmad faiz alawi

    // Halo ACHMAD FAIZ ALAWI!
    // Sekarang saatnya kamu memilih peran...
    // 1. Werewolf
    // 2. Penyihir
    // 3. Penjaga
    // Kamu ingin mengambil peran apa (1/2/3)? 1

    // Saatnya permainan dimulai...
    // Selamat datang di Dunia Werewolf ACHMAD FAIZ ALAWI!
    // Halo Werewolf ACHMAD FAIZ ALAWI, kamu akan memakan mangsa setiap malam!
  */
}

//Inisialisasi method yang menerima inputan String nama pengguna
void inputNama(){
  print("\nDUNIA WEREWOLF");
  print("Selamat datang di permainan...");
  stdout.write("Masukan nama kamu: ");
  namaPemain = stdin.readLineSync().toString().toUpperCase();
  /*
  Proses pengecekan inputan nama pengguna dilakukan untuk menghindari nilai null ataupun spasi kosong.
  Apabila pengguna tidak memberikan inputan ataupun hanya memberikan spasi kosong, program akan
  menampilkan pesan peringatan dan program akan kembali meminta inputan dari pengguna.
   */
  if(namaPemain == null || namaPemain.trim().isEmpty){
    print("Nama harus diisi!"); //Pesan peringatan
    inputNama();
  } else{
    inputPeran(namaPemain); //Memanggil method selanjutnya untuk memilih peran
  }
}

//Inisialisasi method yang menerima inputan String peran pengguna
void inputPeran(String nama){
  print("\nHalo $nama!");
  print("Sekarang saatnya kamu memilih peran...");
  print("1. Werewolf");
  print("2. Penyihir");
  print("3. Penjaga");
  stdout.write("Kamu ingin mengambil peran apa (1/2/3)? ");
  pilihPeran = stdin.readLineSync().toString();
  /*
  Proses pengecekan inputan peran pengguna dilakukan untuk menghindari nilai null ataupun spasi kosong.
  Apabila pengguna tidak memberikan inputan ataupun hanya memberikan spasi kosong, program akan
  menampilkan pesan peringatan dan program akan kembali meminta inputan dari pengguna.
  */
  if(pilihPeran == null || pilihPeran.trim().isEmpty){
    print("Pilih peranmu untuk memulai permainan!"); //Pesan peringatan
    inputPeran(namaPemain);
  } else{
    /*
     Pengecekan kondisi ini dilakukan untuk memproses pilihan peran pengguna. Apabila pilihan pengguna
     tidak valid, maka program akan menampilkan pesan peringatan dan program akan kembali meminta inputan 
     dari pengguna.
     */
    if(pilihPeran == "1"){
      peranPemain = PeranPermainan.werewolf; //Peran Werewolf
      menuPermainan(); //Memanggil method selanjutnya untuk memulai permainan
    } else if(pilihPeran == "2"){
      peranPemain = PeranPermainan.penyihir; //Peran Penyihir
      menuPermainan(); //Memanggil method selanjutnya untuk memulai permainan
    } else if(pilihPeran == "3"){
      peranPemain = PeranPermainan.penjaga; //Peran Penjaga
      menuPermainan(); //Memanggil method selanjutnya untuk memulai permainan
    } else{
      print("Pilihan tidak valid!"); //Pesan peringatan
      inputPeran(namaPemain);
    }
  }
}

//Inisialisasi method yang menampilkan nama dan peran pengguna didalam permainan
void menuPermainan(){
  print("\nSaatnya permainan dimulai...");
  print("Selamat datang di Dunia Werewolf $namaPemain!");
  switch (peranPemain) {
    case PeranPermainan.werewolf:
      print("Halo Werewolf $namaPemain, kamu akan memakan mangsa setiap malam!\n"); //Peran Werewolf
      break;
    case PeranPermainan.penyihir:
      print("Halo Penyihir $namaPemain, kamu dapat melihat siapa yang menjadi Werewolf!\n"); //Peran Penyihir
      break;
    case PeranPermainan.penjaga:
      print("Halo Penjaga $namaPemain, kamu akan membantu melindungi temanmu dari serangan Werewolf!\n"); //Peran Penjaga
      break;
  }
}