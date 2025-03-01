import 'dart:io';

void main() {
  stdout.write("Masukkan nama : ");
  var nama = stdin.readLineSync();

  stdout.write("Masukkan nilai : ");
  var nilai = stdin.readLineSync();
  int NILAI = int.parse('$nilai');

  String predikat = "";
  String keterangan = "";

  switch (NILAI) {
    case > 89:
      predikat = "A";
      break;
    case > 79:
      predikat = "B";
      break;
    case > 69:
      predikat = "C";
      break;
    case > 59:
      predikat = "D";
      break;
    case < 60:
      predikat = "E";
      break;
    default:
      print("Nilai tidak ditemukan");
  }

  if (predikat == "A") {
    keterangan = "Sangat Baik";
  } else if (predikat == "B") {
    keterangan = "Baik";
  } else if (predikat == "C") {
    keterangan = "Cukup";
  } else if (predikat == "D") {
    keterangan = "Kurang";
  } else {
    keterangan = "Gagal";
  }

  print("Nama : $nama");
  print("Nilai : $nilai");
  print("Predikat : $predikat");
  print("Keterangan : $keterangan");
}
