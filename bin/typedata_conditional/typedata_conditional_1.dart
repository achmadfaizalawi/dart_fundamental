/*
Program ini merupakan latihan dart fundamental "type data and conditional" bagian 1.
Pada program ini, kata pada variabel String yang terpisah akan digabungkan menjadi 
satu kalimat String utuh menggunakan String Interpolation.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 23 Oktober 2023
*/

void main (List<String> args) {
  //Inisialisasi variabel untuk menyusun kalimat
  var world = "Dart";
  var second = "is";
  var third = "awesome";
  var fourth = "and";
  var fifth = "I";
  var sixth = "love";
  var seventh = "it!";
  
  /*
  Menampilkan output hasil String Interpolation, 
  output yang dihasilkan yaitu:
    // Dart is awesome and I love it!"
  */
  print("$world $second $third $fourth $fifth $sixth $seventh");
}