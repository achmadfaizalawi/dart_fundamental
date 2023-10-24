/*
Program ini merupakan latihan dart fundamental "function" bagian 4.
Pada program ini, disusun sebuah program menggunakan function yang dapat menghitung nilai faktorial.
Apabila nilai faktorial kurang dari 0 maka akan mengembalikan nilai 1, sedangkan apabila nilai faktorial
lebih dari 0 maka nilai faktorial akan diproses perhitungannya.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main() {
  //Inisialisasi variabel Integer untuk dihitung nilai faktorialnya
  int angka = 6;

  //Memanggil dan menginisialisasi function kedalam variabel
  int hasilFaktorial = factorial(angka);

  //Menampilkan nilai kembalian dari function berdasarkan nilai inputan yang diberikan
  /*
  Contoh output yang dihasilkan dari program: 
    // 6! = 720
  */
  print("$angka! = $hasilFaktorial");
}

//Inisialisasi function untuk menghitung nilai faktorial dari angka yang diberikan
int factorial(int number) {
  if (number <= 0) {   //Proses conditional apabila angka adalah atau kurang dari 0, maka mengembalikan nilai 1
    return 1;
  } else { //Proses conditional apabila angka lebih dari 0, akan masuk proses faktorial
    int result = 1; //Variabel referensi dalam menghitung faktorial
    for (int i = 1; i <= number; i++) {
      result *= i; 
    }
    return result; //Mengembalikan nilai yang didapatkan function kepada pemanggil function
  }
}