class Sepeda {
  String? warna;
  int? ukuran;
  int? kecepatan;

  void changeGear(int newValue) {
    kecepatan = newValue;
  }

  void display() {
    print("Warna: $warna");
    print("Size: $ukuran");
    print("Current Speed: $kecepatan");
  }
}

void main() {
  Sepeda bicycle = Sepeda();
  bicycle.warna = "Merah";
  bicycle.ukuran = 26;
  bicycle.kecepatan = 0;
  bicycle.changeGear(5);
  bicycle.display();
}
