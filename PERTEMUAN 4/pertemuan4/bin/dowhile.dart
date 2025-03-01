import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int angkaBenar = random.nextInt(10) + 1;
  int tebakan;

  print("Selamat datang di Tebak angka!");
  print("Tebak angka dari 1-10");

  do {
    stdout.write("Masukkan tebakkan anda: ");
    tebakan = int.parse(stdin.readLineSync()!);

    if (tebakan < angkaBenar) {
      print("Tebakan terlalu kecil, coba lagi!");
    } else if (tebakan > angkaBenar) {
      print("Tebakan terlalu besar, coba lagi!");
    } else {
      print("Selamat tebakan anda benar!");
    }
  } while (tebakan != angkaBenar);
}
