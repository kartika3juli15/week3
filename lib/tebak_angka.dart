import 'dart:io';
import 'dart:math';

void mulaiTebakAngka() {
  var random = Random();
  int angkaRahasia = random.nextInt(10) + 1;
  int tebakan;
  int kesempatan = 3;

  print('=== Permainan Tebak Angka ===');
  print('Saya sudah memilih angka antara 1 sampai 10.');
  print('Kamu punya $kesempatan kesempatan untuk menebak!\n');

  for (int i = 1; i <= kesempatan; i++) {
    stdout.write('Tebakan ke-$i: ');
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan == angkaRahasia) {
      print('🎉 Selamat! Tebakan kamu benar!');
      return;
    } else if (tebakan < angkaRahasia) {
      print('Angka terlalu kecil!');
    } else {
      print('Angka terlalu besar!');
    }
  }

  print('\nKesempatan habis! Angka yang benar adalah $angkaRahasia.');
}
