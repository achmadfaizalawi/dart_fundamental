/*
Program ini merupakan latihan dart fundamental "looping" bagian 2.
Pada program ini, dibuat kode looping yang akan terus melakukan iterasi hingga kondisi terpenuhi 
dengan syarat sebagai berikut:
1. Jika angka ganjil maka tampilkan "Santai",
2. Jika angka genap maka tampilkan "Berkualitas",
3. Jika angka yang sedang ditampilkan adalah kelipatan 3 dan angka ganjil maka tampilkan "I Love Coding".

Penyusun: Achmad Faiz Alawi
Terakhir diubah: 24 Oktober 2023
*/

void main(List<String> args) {
  for(int iterasi = 1; iterasi <= 20; iterasi++){ //Insialisasi iterasi increment mulai dari 1 hingga 20
    if(iterasi%3 == 0 && iterasi%2 != 0){ //Conditional apabila angka habis dibagi 3 dan tidak habis dibagi 2 (syarat no 3)
      print("$iterasi - I Love Coding");
    } else if(iterasi%2 == 0){ //Conditional apabila angka habis dibagi 2 (syarat no 2)
      print("$iterasi - Berkualitas");
    } else if(iterasi% 3 != 0){ //Conditional apabila angka tidak habis dibagi 3 (syarat no 1)
      print("$iterasi - Santai");
    }
  }
}

/*
Output yang dihasilkan dari program:
  // 1 - Santai
  // 2 - Berkualitas
  // 3 - I Love Coding
  // 4 - Berkualitas
  // 5 - Santai
  // 6 - Berkualitas
  // 7 - Santai
  // 8 - Berkualitas
  // 9 - I Love Coding
  // 10 - Berkualitas
  // 11 - Santai
  // 12 - Berkualitas
  // 13 - Santai
  // 14 - Berkualitas
  // 15 - I Love Coding
  // 16 - Berkualitas
  // 17 - Santai
  // 18 - Berkualitas
  // 19 - Santai
  // 20 - Berkualitas
*/