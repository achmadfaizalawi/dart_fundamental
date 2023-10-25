///Jangan running file ini karena file ini hanya berisi mixin method object saja,
///Silahkan running keseluruhan program ini melalui function [main] pada [oop4_1.dart].

//Inisialisasi beberapa mixin method yang akan digunakan oleh masing-masing class turunan
///Class yang digunakan pada [ArmorTitan]
mixin Menerjang{
  void menerjang(){
    print("dush... dush...");
  }
}
///Class yang digunakan pada [AttackTitan]
mixin Memukul{
  void memukul(){
    print("blam... blam...");
  }
}
///Class yang digunakan pada [BeastTitan]
mixin Melempar{
  void melempar(){
    print("wush... wush...");
  }
}
///Class yang digunakan pada [Human]
mixin MembunuhTitan{
  void membunuhTitan(){
    print("sasageyo... shinzo sasageyo...");
  }
}