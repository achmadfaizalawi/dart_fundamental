/*
Program ini merupakan latihan dart fundamental "looping" bagian 1.
Pada program ini, dibuat dua kode looping yang akan terus melakukan iterasi hingga kondisi terpenuhi.
- LOOPING PERTAMA, akan terus berjalan dari iterasi 0 hingga iterasi ke 20,
- LOOPING KEDUA, akan berjalan apabila telah mencapai iterasi ke 20 dan akan melakukan looping hingga iterasi 0.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  int iterasi = 0; //Deklarasi nilai untuk iterasi looping
  print("LOOPING PERTAMA"); //Menampilkan pesan apabila looping akan berjalan
  while(iterasi < 20){
    iterasi += 2; //Looping akan melakukan increment bilangan genap
    print("$iterasi - I love coding"); //Menampilkan pesan iterasinya
  }
  print("LOOPING KEDUA"); //Menampilkan pesan apabila looping akan berjalan
  while(iterasi > 0){
    print("$iterasi - I will become a mobile developer"); //Menampilkan pesan iterasinya
    iterasi -= 2; //Looping akan melakukan decrement bilangan genap
  }
}

/*
Output yang dihasilkan dari program:
  // LOOPING PERTAMA
  // 2 - I love coding
  // 4 - I love coding
  // 6 - I love coding
  // 8 - I love coding
  // 10 - I love coding
  // 12 - I love coding
  // 14 - I love coding
  // 16 - I love coding
  // 18 - I love coding
  // 20 - I love coding
  // LOOPING KEDUA
  // 20 - I will become a mobile developer
  // 18 - I will become a mobile developer
  // 16 - I will become a mobile developer
  // 14 - I will become a mobile developer
  // 12 - I will become a mobile developer
  // 10 - I will become a mobile developer
  // 8 - I will become a mobile developer
  // 6 - I will become a mobile developer
  // 4 - I will become a mobile developer
  // 2 - I will become a mobile developer
*/