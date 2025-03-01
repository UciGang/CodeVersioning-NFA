abstract class Kendaraan {
  String nama;
  Kendaraan(this.nama);

  void hidupkanMesin();
  void matikanMesin();

  void info() {
    print("Nama: $nama");
    hidupkanMesin();
    matikanMesin();
  }
}

class Mobil extends Kendaraan {
  Mobil(String nama) : super(nama);

  @override
  void hidupkanMesin() => print("$nama: Mesin mobil dinyalakan... VROOM!!");

  @override
  void matikanMesin() => print("$nama: Mesin mobil dimatikan");
}

class Motor extends Kendaraan {
  Motor(String nama) : super(nama);

  @override
  void hidupkanMesin() => print("$nama: Mesin motor dinyalakan... NGEEENG!!");

  @override
  void matikanMesin() => print("$nama: Mesin motor dimatikan");
}

void main() {
  var rush = Mobil("Rush");
  var beat = Motor("Honda Beat");

  rush.info();
  beat.info();
}
