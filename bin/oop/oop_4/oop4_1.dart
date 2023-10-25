/// Program ini merupakan latihan dart fundamental "object-oriented programming" bagian 4.
/// Pada program ini, terdapat blue print yang bernama [Titan] pada file [oop4_6.dart] yang memiliki
/// beberapa atribut serta satu method untuk menampilkan atribut. Blue print [Titan] digunakan untuk
/// membuat beberapa object diantaranya:
/// 1. [ArmorTitan] pada file [oop4_2.dart]
/// 2. [AttackTitan] pada file [oop4_3.dart]
/// 3. [BeastTitan] pada file [oop4_4.dart]
/// 4. [Human] pada file [oop4_5.dart]
/// Dalam membuat object, blue print [Titan] meminta inputan berupa nilai [powerPoint] sehingga saat
/// membuat object, nilai [powerPoint] harus dimasukan dengan inisialisasi super yang mengarahkannya
/// ke inisialisasi object pada fungsi [main] saat object dibuat. Selain itu, masing-masing object
/// memiliki method masing-masing yang diimplementasikan dengan konsep [mixin]. Method [mixin] dapat
/// dilihat pada file [oop4_7.dart]. 

// Penyusun: Achmad Faiz Alawi
// Terakhir diubah: 25 Oktober 2023

///Deklarasi library untuk menghubungkan file ini dengan beberapa file
import 'oop4_2.dart';
import 'oop4_3.dart';
import 'oop4_4.dart';
import 'oop4_5.dart';

void main(List<String> args) {
  //Inisialisasi blue print kepada object baru
  var armorTitan = ArmorTitan(powerPoint: 1000);
  var attackTitan = AttackTitan(powerPoint: 1000);
  var beastTitan = BeastTitan(powerPoint: 1000);
  var manusia = Human(powerPoint: 500);

  //Memanggil method pada masing-masing object
  //Object Armor Titan
  armorTitan.showProfile(); //Melihat profil dari object
  armorTitan.menerjang(); //Melihat kemampuan dari object
  print("");
  //Object Attack Titan
  attackTitan.showProfile();
  attackTitan.memukul();
  print("");
  //Object Beast Titam
  beastTitan.showProfile();
  beastTitan.melempar();
  print("");
  //Object Manusia
  manusia.showProfile();
  manusia.membunuhTitan();

  /*
  Output yang dihasilkan dari program:
    // Nama        : Armor Titan
    // Power point : 1000 PP
    // Kemampuan   : Menerjang
    // dush... dush...

    // Nama        : Attack Titan
    // Power point : 1000 PP
    // Kemampuan   : Memukul
    // blam... blam...

    // Nama        : Beast Titan
    // Power point : 1000 PP
    // Kemampuan   : Melempar
    // wush... wush...

    // Nama        : Manusia
    // Power point : 500 PP
    // Kemampuan   : Membunuh Titan
    // sasageyo... shinzo sasageyo...
  */
}