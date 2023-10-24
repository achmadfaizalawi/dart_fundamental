/*
Program ini merupakan latihan dart fundamental "list & map" bagian 4.
Pada program ini, disusun sebuah program yang dapat menambahkan key-value baru kedalam Map berdasarkan
suatu kondisi pada Map tersebut. Hasil akhir dari program ini yaitu menambahkan key-value grading 
berdasarkan key-value dari nilai siswa.

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Inisialisasi Map yang akan diproses oleh function untuk conditional dan key-value baru
  Map siswaA = {
    'Nama'  : 'Blacky',
    'Nilai' : 100
  };
  Map siswaB = {
    'Nama'  : 'Mocha',
    'Nilai' : 70
  };

  //Memanggil function untuk proses grading nilai siswa
  grading(siswaA);
  grading(siswaB);

  //Menampilkan pesan hasil grading nilai siswa berdasarkan key Nilai
  /*
   Output yang dihasilkan dari program:
    // {Nama: Blacky, Nilai: 100, Grade: A}
    // {Nama: Mocha, Nilai: 70, Grade: B}
  */
  print(siswaA);
  print(siswaB);
}

//Inisialisasi function untuk memproses grading nilai siswa dengan conditional
void grading(Map siswa){
  if(siswa['Nilai'] >= 80){ //Jika nilai siswa lebih dari atau sama dengan 80
    siswa['Grade'] = 'A'; 
  } else if(siswa['Nilai'] >= 60 && siswa['Nilai'] < 80){ //Jika nilai siswa lebih dari atau sama dengan 60 dan kurang dari 80
    siswa['Grade'] = 'B';
  } else{ //Jika nilai siswa selain dari dua kondisi sebelumnya
    siswa['Grade'] = 'C';
  }
}