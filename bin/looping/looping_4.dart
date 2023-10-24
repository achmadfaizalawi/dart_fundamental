/*
Program ini merupakan latihan dart fundamental "looping" bagian 4.
Pada program ini, dibuat kode looping yang akan menampilkan segitiga dengan String karakter sesuai 
dengan inputan nilai dimensinya. Pada perulangan ini, karakter akan dikalikan dengan nilai iterasi
yang looping hingga sama dengan nilai dimensi yang diberikan.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Inisialisasi besarnya dimensi dari segitiga
  int dimensi = 7; 

  //Inisialisasi nilai looping untuk membuat segitiga berdasarkan referensi dimensi
  for(int iterasi = 1; iterasi <= dimensi; iterasi++){
    print("#"*iterasi); //Menampilkan pesan hasil segitiga yang dibuat
  }
}

/*
Contoh output yang dihasilkan dari program:
  // #
  // ##
  // ###
  // ####
  // #####
  // ######
  // #######
*/