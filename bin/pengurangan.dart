import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write('Masukkan angka pertama: ');
  double angka1 = double.parse(stdin.readLineSync()!);

  stdout.write('Masukkan angka kedua: ');
  double angka2 = double.parse(stdin.readLineSync()!);

  // Menghitung pengurangan
  double hasil = angka1 - angka2;

  // Menampilkan hasil
  print('Hasil pengurangan: $hasil');
}
