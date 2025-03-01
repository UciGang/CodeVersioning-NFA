import 'kendaraan.dart';

class Mobil extends Kendaraan {
  Mobil(String nama, int tahun, String warna) : super(nama, tahun, warna);

  @override
  void info() {
    print("Nama: $nama, Tahun keluaran: $tahun, Warna: $warna");
  }

  @override
  void servis() {
    print("Servis mobil $nama dilakukan.");
  }
}
