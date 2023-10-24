/*
Program ini merupakan latihan dart fundamental "list & map" bagian 1.
Pada program ini, disusun sebuah program yang melakukan looping berdasarkan dua angka inputan. Jika angka
pertama lebih besar dari angka kedua, maka looping akan bekerja secara descending. Sedangkan apabila angka
kedua lebih besar dari angka pertama, maka looping akan bekerja secara ascending. Angka hasil looping 
tersebut akan disimpan kedalam sebuah list.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Memanggil function dengan menginisialisasi angka pertama dan angka kedua
  /*
  Contoh output yang dihasilkan dari program:
    // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    // [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  */
  range(1, 10);
  range(10, 1);
}

//Inisialisasi function yang melakukan looping dari angka pertama dan angka kedua
void range(int startNum, int finishNum){
  //Inisialisasi list untuk menyimpan angka looping
  List<int> listRange = [];
  //Pengecekan kondisi dari besarnya angka pertama dan angka kedua
  if(startNum < finishNum){ //Proses akan berjalan apabila angka pertama lebih kecil dari angka kedua
    for(startNum; startNum <= finishNum; startNum++){ //Proses looping secara ascending
      listRange.add(startNum); //Inisialisasi angka looping kedalam list
    }
  } else if(startNum > finishNum){ //Proses akan berjalan apabila angka kedua lebih kecil dari angka pertama
      for(startNum; startNum >= finishNum; startNum--){ //Proses looping secara descending
        listRange.add(startNum); //Inisialisasi angka looping kedalam list
    }
  }
  //Menampilkan pesan dari list yang telah diisi oleh angka hasil looping
  print(listRange);
}
