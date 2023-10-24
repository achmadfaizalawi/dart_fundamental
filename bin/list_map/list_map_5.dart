/*
Program ini merupakan latihan dart fundamental "list & map" bagian 5.
Pada program ini, disusun sebuah program yang dapat menambahkan key-value baru kedalam Map berdasarkan
suatu kondisi pada Map tersebut. Hasil akhir dari program ini yaitu menambahkan key-value grading 
berdasarkan key-value dari nilai siswa. 

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  //Inisialisasi list yang berisi map daftar siswa yang akan ditambahkan key-value grade
  List<Map> siswa = [
    {
      'Nama': 'Mocha',
      'Nilai': 80
    },
    {
      'Nama': 'Blacky',
      'Nilai': 20
    },
    {
      'Nama': 'Chickie',
      'Nilai': 100
    },
  ];

  //Memanggil function untuk memproses grade siswa dengan diisi parameter list sebelumnya
  mappingGrade(siswa);

  //Melakukan pengindeksan list untuk melihat hasil proses grade siswa
  /*
  Output yang dihasilkan dari program:
    // {Nama: Mocha, Nilai: 80, Grade: A}
    // {Nama: Blacky, Nilai: 20, Grade: C}
    // {Nama: Chickie, Nilai: 100, Grade: A}
  */
  for(var hasilMapping in siswa){
    print(hasilMapping); //Menampilkan hasil dari output
  }
}

//Inisialisasi function untuk memproses penambahan key-value grade berdasarkan nilai siswa
void mappingGrade(List dataSiswa){
  for(var indeks in dataSiswa){ //Mengindeks isi dari list dataSiswa
    if(indeks['Nilai'] >= 80){ //Jika nilai indeks lebih dari atau sama dengan 80
      indeks['Grade'] = 'A'; 
    } else if(indeks['Nilai'] >= 60 && indeks['Nilai'] < 80){ //Jika nilai indeks lebih dari atau sama dengan 60 dan kurang dari 80
      indeks['Grade'] = 'B';
    } else{ //Jika nilai indeks selain dari dua kondisi sebelumnya
      indeks['Grade'] = 'C';
    }
  }
}