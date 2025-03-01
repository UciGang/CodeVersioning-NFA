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
    print("Jabatan: $jabatan");
    print("Gaji Pokok: Rp.$gajiPokok");
    print("Tunjangan: Rp.$tunjangan");
    print("Potongan: Rp.$potongan");
    print("Gaji Bersih: Rp.${hitungGajiBersih()}");
    print("=======================================");
  }
}

void main() {
  Pegawai pegawai1 = Pegawai("Rifky", "CEO", 10000000, 2000000, 500000);
  Pegawai pegawai2 = Pegawai("Uci", "CFO", 10000000, 2000000, 500000);

  print("=== Data Pegawai ===");
  pegawai1.tampilkanInfo();
  pegawai2.tampilkanInfo();
}
