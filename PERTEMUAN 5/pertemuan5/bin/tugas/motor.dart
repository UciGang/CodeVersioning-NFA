import 'kendaraan.dart';

class Motor extends Kendaraan {
  bool bonusHelm;
  Motor(String nama, int tahun, String warna, this.bonusHelm)
    : super(nama, tahun, warna);

  String getHelm() {
    if (bonusHelm == true) {
      return "Dapat Helm";
    } else {
      return "Tidak Dapat Helm";
    }
  }

  @override
  void info() {
    print(
      "Nama: $nama, Tahun keluaran: $tahun, Warna: $warna, Bonus Helm: ${getHelm()}",
    );
  }

  @override
  void servis() {
    print("Servis motor $nama dilakukan.");
  }
}
