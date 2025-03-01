class Pegawai {
  String nama;
  String jabatan;
  double gajiPokok;
  double tunjangan;
  double potongan;

  Pegawai(
    this.nama,
    this.jabatan,
    this.gajiPokok,
    this.tunjangan,
    this.potongan,
  );

  double hitungGajiBersih() {
    return gajiPokok + tunjangan - potongan;
  }

  void tampilkanInfo() {
    print("Nama: $nama");
    print("Gaji Pokok: Rp.$gajiPokok");
    print("Tunjangan: Rp.$tunjangan");
    print("Potongan: Rp.$potongan");
  }
}

class Manager extends Pegawai {
  double bonus;
  Manager(
    String nama,
    double gajiPokok,
    double tunjangan,
    double potongan,
    this.bonus,
  ) : super(nama, "Manager", gajiPokok, tunjangan, potongan);

  @override
  double hitungGajiBersih() {
    return super.hitungGajiBersih() + bonus;
  }

  @override
  void tampilkanInfo() {
    super.tampilkanInfo();
    print("Bonus: Rp.$bonus");
    print("Gaji Bersih: Rp.${hitungGajiBersih()}");
    print("=======================================");
  }
}

class Staff extends Pegawai {
  double uangMakan;

  Staff(
    String nama,
    double gajiPokok,
    double tunjangan,
    double potongan,
    this.uangMakan,
  ) : super(nama, "Staff", gajiPokok, tunjangan, potongan);

  @override
  double hitungGajiBersih() {
    return super.hitungGajiBersih() + uangMakan;
  }

  @override
  void tampilkanInfo() {
    super.tampilkanInfo();
    print("Uang Makan: Rp.$uangMakan");
    print("Gaji Bersih: Rp.${hitungGajiBersih()}");
    print("=======================================");
  }
}

void main() {
  Manager manager1 = Manager("Rifky", 10000000, 2000000, 500000, 1000000);
  Staff staff1 = Staff("Uci", 10000000, 2000000, 500000, 100000);

  print("=== Data Pegawai ===");
  manager1.tampilkanInfo();
  staff1.tampilkanInfo();
}
