import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int score = 0;

  print('🎯 Selamat datang di Game Matematika!');
  print('Akan ada soal pengurangan (-) dan perkalian (×).');
  print('Ketik "exit" untuk keluar.\n');

  while (true) {
    // Tentukan jenis operasi (0 = pengurangan, 1 = perkalian)
    final isMultiplication = random.nextBool();

    // Buat dua angka acak
    final a = random.nextInt(10) + 1; // 1–10
    final b = random.nextInt(10) + 1;

    // Tentukan soal dan jawaban yang benar
    final question = isMultiplication ? '$a × $b' : '$a - $b';
    final correctAnswer = isMultiplication ? a * b : a - b;

    stdout.write('Hitung $question = ');
    final input = stdin.readLineSync();

    // Cek apakah user ingin keluar
    if (input == null || input.toLowerCase() == 'exit') {
      print('\n👋 Keluar dari permainan.');
      break;
    }

    final answer = int.tryParse(input);
    if (answer == null) {
      print('❌ Masukkan angka yang valid!\n');
      continue;
    }

    if (answer == correctAnswer) {
      print('✅ Benar! +1 poin\n');
      score++;
    } else {
      print('❌ Salah. Jawaban yang benar adalah $correctAnswer\n');
    }

    print('Skor kamu sekarang: $score\n');
  }

  print('🎉 Permainan selesai. Skor akhir kamu: $score');
}
