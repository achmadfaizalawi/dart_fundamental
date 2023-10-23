/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 2.
Pada program ini, kata pada variabel String akan diambil untuk dimasukan kembali 
kedalam variabel String lain menggunakan Substring.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 23 Oktober 2023
*/

void main(List<String> args) {
  //Inisialisasi variabel kalimat utama untuk dipotong per kata
  var sentence = "I am going to be Flutter Developer";

  /*
  Inisialisasi variabel untuk menyimpan kata hasil substring kalimat utama
  Disini, pengindeksan pada String menggunakan method ".substring(start, end)"
  */
  var firstWord = sentence.substring(0,1);
  var secondWord = sentence.substring(2,4);
  var thirdWord = sentence.substring(5,10);
  var fourthWord = sentence.substring(11,13);
  var fifthWord = sentence.substring(14,16);
  var sixthWord = sentence.substring(17,24);
  var seventhWord = sentence.substring(25,34);

  /*
  Menampilkan output String Interpolation,
  output yang dihasilkan yaitu:
    // First word : I
    // Second word : am
    // Third word : going
    // Fourth word : to
    // Fifth word : be
    // Sixth word : Flutter
    // Seventh word : Developer
  */
  print('First word : $firstWord');
  print('Second word : $secondWord');
  print('Third word : $thirdWord');
  print('Fourth word : $fourthWord');
  print('Fifth word : $fifthWord');
  print('Sixth word : $sixthWord');
  print('Seventh word : $seventhWord');
}