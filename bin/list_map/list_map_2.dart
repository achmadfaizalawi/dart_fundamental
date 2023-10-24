/*
Program ini merupakan latihan dart fundamental "list & map" bagian 2.
Pada program ini, disusun sebuah program yang melakukan looping berdasarkan dua angka inputan dengan step. 
Jika angka pertama lebih besar dari angka kedua, maka looping akan bekerja secara descending sesuai dengan
besar dari stepnya. Sedangkan apabila angka kedua lebih besar dari angka pertama, maka looping akan bekerja 
secara ascending sesuai dengan besar dari stepnya. Angka hasil looping  tersebut akan disimpan kedalam 
sebuah list.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Memanggil function dengan menginisialisasi angka pertama, angka kedua, dan step
  /*
  Contoh output yang dihasilkan dari program:
    // [11, 14, 17, 20, 23]
    // [23, 21, 19, 17, 15, 13, 11]
  */
  rangeWithStep(11, 23, 3);
  rangeWithStep(23, 11, 2);
}

//Inisialisasi function yang melakukan looping dari angka pertama, angka kedua, serta stepnya
void rangeWithStep(int startNum, int finishNum, int step){
  //Inisialisasi list untuk menyimpan angka looping
  List<int> listRange = [];
  //Pengecekan kondisi dari besarnya angka pertama dan angka kedua
  if(startNum < finishNum){ //Proses akan berjalan apabila angka pertama lebih kecil dari angka kedua
    for(startNum; startNum <= finishNum; startNum+=step){ //Proses looping secara ascending sesuai step
      listRange.add(startNum); //Inisialisasi angka looping kedalam list
    }
  } else if(startNum > finishNum){ //Proses akan berjalan apabila angka kedua lebih kecil dari angka pertama
      for(startNum; startNum >= finishNum; startNum-=step){ //Proses looping secara descending sesuai step
        listRange.add(startNum); //Inisialisasi angka looping kedalam list
    }
  }
  //Menampilkan pesan dari list yang telah diisi oleh angka hasil looping
  print(listRange);
}
