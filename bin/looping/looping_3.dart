/*
Program ini merupakan latihan dart fundamental "looping" bagian 3.
Pada program ini, dibuat kode looping yang akan menampilkan persegi dengan String karakter sesuai 
dengan inputan nilai samping dan nilai bawahnya. Pada perulangan ini, karakter akan dikalikan dengan
nilai samping untuk menentukan lebar dari persegi, serta karakter akan diiterasi dengan nilai bawah 
yang didapatkan dari looping untuk menentukan tinggi dari persegi.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  /**
  Memanggil method untuk membuat persegi, disini akan dibuat persegi dengan lebar 8 dan tinggi 4,
  serta akan menggunakan karakter "#".
  */
  loopCaracter(8, 4, "#");

  /*
  Contoh output yang dihasilkan dari program:
    // ########
    // ########
    // ########
    // ########
  */ 
}

//Inisialisasi method untuk membuat persegi dari karakter dengan konsep looping
void loopCaracter(int samping, int bawah, String karakter){
  //Proses untuk mendapatkan lebar persegi dengan mengalikan karakter dengan besar nilai samping
  karakter *= samping; 
  //Proses untuk mendapatkan nilai tinggi persegi dengan iterasi looping
  for(int iterasi = 1; iterasi <= bawah; iterasi++){
    print(karakter); //Menampilkan hasil iterasi looping
  }
}