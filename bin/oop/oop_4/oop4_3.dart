///Jangan running file ini karena file ini hanya berisi blue class turunannya saja,
///Silahkan running keseluruhan program ini melalui function [main] pada [oop4_1.dart].

//Deklarasi library untuk menghubungkan file ini dengan beberapa file
import 'oop4_6.dart';
import 'oop4_7.dart';

///Inisialisasi class yang akan dijadikan object [attackTitan]
class AttackTitan extends Titan with Memukul{
  //Deklarasi constructor blue print dengan super untuk mengisi nilai constructor
  AttackTitan({required num powerPoint}) 
  :super(namaTitan: "Attack Titan", kemampuanTitan: "Memukul", powerPoint: powerPoint);
}