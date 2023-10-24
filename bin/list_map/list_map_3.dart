/*
Program ini merupakan latihan dart fundamental "list & map" bagian 3.
Pada program ini, disusun sebuah program yang dapat meng-handling data berupa list multidimensi. Program
akan mengindeks list tersebut agar mendapatkan informasi mengenai data pribadi pengguna. Hasil akhir dari
program ini adalah data pribadi pengguna seperti nomor ID, nama lengkap, ttl, dan hobi dapat ditampilkan
menjadi lebih jelas.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Inisialisasi list multidimensi dengan beberapa data pengguna
  List<List> input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992","Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "06/04/1970", "Berkebun"]
  ];
  //Memanggil function untuk meng-handling list multidimensi dengan parameter input
  /*
  Output yang dihasilkan dari program:
    // Nomor ID     : 0001
    // Nama Lengkap : Roman Alamsyah
    // TTL          : Bandar Lampung, 21/05/1989
    // Hobi         : Membaca

    // Nomor ID     : 0002
    // Nama Lengkap : Dika Sembiring
    // TTL          : Medan, 10/10/1992
    // Hobi         : Bermain Gitar

    // Nomor ID     : 0003
    // Nama Lengkap : Winona
    // TTL          : Ambon, 25/12/1965
    // Hobi         : Memasak

    // Nomor ID     : 0004
    // Nama Lengkap : Bintang Senjaya
    // TTL          : Martapura, 06/04/1970
    // Hobi         : Berkebun
  */
  dataHandling(input);
}

//Inisialisasi function untuk mengindeks list multidimensi dengan looping list
void dataHandling(List inputList){
  //Proses looping list dengan parameter i untuk indeks didalam list
  for(var i in inputList){
    print("Nomor ID     : ${i[0]}"); //Indeks nomor ID
    print("Nama Lengkap : ${i[1]}"); //Indeks nama lengkap
    print("TTL          : ${i[2]}, ${i[3]}"); //Indeks ttl
    print("Hobi         : ${i[4]}\n"); //Indeks hobi
  }
}