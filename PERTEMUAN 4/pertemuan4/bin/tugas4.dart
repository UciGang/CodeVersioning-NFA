import 'dart:io';
import 'package:intl/intl.dart';

void main() {
  List<Map<String, dynamic>> pegawai = [
    {
      'id': 1,
      'nama': 'Uci',
      'jabatan': 'Manager',
      'gaji': 7000000,
      'tahun_bergabung': 2018,
    },
    {
      'id': 2,
      'nama': 'Rifky',
      'jabatan': 'Supervisor',
      'gaji': 6000000,
      'tahun_bergabung': 2018,
    },
    {
      'id': 3,
      'nama': 'Andi',
      'jabatan': 'Staff',
      'gaji': 4500000,
      'tahun_bergabung': 2021,
    },
    {
      'id': 4,
      'nama': 'Budi',
      'jabatan': 'Staff',
      'gaji': 4500000,
      'tahun_bergabung': 2022,
    },
    {
      'id': 5,
      'nama': 'Dewi',
      'jabatan': 'Staff',
      'gaji': 4500000,
      'tahun_bergabung': 2022,
    },
  ];

  int hitungLamaKerja(int tahunBergabung) {
    int tahunSekarang = 2025;
    return tahunSekarang - tahunBergabung;
  }

  int hitungBonusTahunan(int lamaKerja) {
    if (lamaKerja == 0) {
      return 0;
    } else {
      return 200000 + hitungBonusTahunan(lamaKerja - 1);
    }
  }

  int hitungTunjangan(String jabatan, {int tunjangan = 0}) {
    jabatan = jabatan.toLowerCase();
    if (jabatan == 'manager') {
      tunjangan = 1000000;
    } else if (jabatan == 'supervisor') {
      tunjangan = 700000;
    } else if (jabatan == 'staff') {
      tunjangan = 500000;
    }
    return tunjangan;
  }

  int hitungGajiBersih(int gaji, int bonus, int tunjangan) {
    double pajak = (gaji + bonus + tunjangan) * 0.15;
    return (gaji + bonus + tunjangan - pajak).toInt();
  }

  void tampilkanPegawai(List<Map<String, dynamic>> pegawai) {
    print("\n=== Daftar Pegawai ===");
    for (var i = 0; i < pegawai.length; i++) {
      var f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
      print(
        "${pegawai[i]['id']}. ${pegawai[i]['nama']} - ${pegawai[i]['jabatan']} - Gaji: ${f.format(pegawai[i]['gaji'])} - Tahun Bergabung: ${pegawai[i]['tahun_bergabung']}",
      );
    }
  }

  void tambahPegawai(List<Map<String, dynamic>> pegawai) {
    print("Masukkan detail pegawai baru:");
    stdout.write("ID: ");
    int id = int.parse(stdin.readLineSync()!);
    stdout.write("Nama: ");
    String nama = stdin.readLineSync()!;
    stdout.write("Jabatan: ");
    String jabatan = stdin.readLineSync()!.toLowerCase();
    stdout.write("Gaji: ");
    int gaji = int.parse(stdin.readLineSync()!);
    stdout.write("Tahun Bergabung: ");
    int tahunBergabung = int.parse(stdin.readLineSync()!);

    Map<String, dynamic> pegawaiBaru = {
      'id': id,
      'nama': nama,
      'jabatan': jabatan,
      'gaji': gaji,
      'tahun_bergabung': tahunBergabung,
    };

    pegawai.add(pegawaiBaru);
    int lamaKerja = hitungLamaKerja(pegawaiBaru['tahun_bergabung']);
    int bonus = hitungBonusTahunan(lamaKerja);
    int tunjangan = hitungTunjangan(pegawaiBaru['jabatan']);
    int gajiBersih = hitungGajiBersih(pegawaiBaru['gaji'], bonus, tunjangan);
    var f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
    print("\nPegawai baru berhasil ditambahkan:");
    print(
      "${pegawaiBaru['id']}. ${pegawaiBaru['nama']} - ${pegawaiBaru['jabatan']} - Gaji: ${f.format(pegawaiBaru['gaji'])} - Lama Kerja: $lamaKerja tahun - Bonus Tahunan: ${f.format(bonus)} - Tunjangan: ${f.format(tunjangan)} - Gaji Bersih: ${f.format(gajiBersih)}",
    );
  }

  void totalGaji(List<Map<String, dynamic>> pegawai) {
    num total = 0;
    for (var pegawai in pegawai) {
      total += pegawai['gaji'];
    }
    var f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
    print("\nTotal Gaji: ${f.format(total)}");
  }

  void tampilkanPegawaiGanjilGenap(
    List<Map<String, dynamic>> pegawai,
    bool ganjil,
  ) {
    print("\n=== Daftar Pegawai ${ganjil ? 'Ganjil' : 'Genap'} ===");
    for (var pegawai in pegawai) {
      int lamaKerja = hitungLamaKerja(pegawai['tahun_bergabung']);
      if ((pegawai['id'] % 2 == 0 && !ganjil) ||
          (pegawai['id'] % 2 != 0 && ganjil)) {
        var f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
        print(
          "${pegawai['id']}. ${pegawai['nama']} - ${pegawai['jabatan']} - ${f.format(pegawai['gaji'])} - Lama Kerja: $lamaKerja tahun",
        );
      }
    }
  }

  void hitungTunjanganPegawai(
    List<Map<String, dynamic>> pegawai, {
    required String jabatan,
  }) {
    int tunjangan = hitungTunjangan(jabatan);
    var f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
    print("\n=== Tunjangan untuk Jabatan $jabatan ===");
    print("$jabatan = Tunjangan: ${f.format(tunjangan)}");
  }

  void hitungBonusTahunanPegawai(
    List<Map<String, dynamic>> pegawai, {
    required String nama,
  }) {
    for (var pegawai in pegawai) {
      if (pegawai['nama'].toLowerCase() == nama.toLowerCase()) {
        int lamaKerja = hitungLamaKerja(pegawai['tahun_bergabung']);
        var f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
        print("Lama Kerja ${pegawai['nama']}: $lamaKerja tahun");
        print(
          "\nBonus Tahunan untuk ${pegawai['nama']}: ${f.format(hitungBonusTahunan(lamaKerja))}",
        );
        return;
      }
    }
    print("\nPegawai dengan nama $nama tidak ditemukan.");
  }

  void hitungGajiBersihPegawai(
    List<Map<String, dynamic>> pegawai, {
    required String nama,
  }) => pegawai.forEach((p) {
    if (p['nama'].toLowerCase() == nama.toLowerCase()) {
      int lamaKerja = hitungLamaKerja(p['tahun_bergabung']);
      int bonus = hitungBonusTahunan(lamaKerja);
      int tunjangan = hitungTunjangan(p['jabatan']);
      int gajiBersih = hitungGajiBersih(p['gaji'], bonus, tunjangan);
      var f = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
      print("Rincian Perhitungan:");
      print("Gaji Pokok: ${f.format(p['gaji'])}");
      print("Bonus Tahunan: ${f.format(bonus)}");
      print("Tunjangan: ${f.format(tunjangan)}");
      print(
        "Pajak: ${f.format((gajiBersih.toDouble() / (1 - 0.15)).toInt() * 0.15)}",
      );
      print("Gaji Bersih untuk ${p['nama']}: ${f.format(gajiBersih)}");
      return;
    }
  });

  void interfacePegawai() {
    print("\nMenu:");
    print("1. Tampilkan Data Pegawai");
    print("2. Tambahkan Pegawai Baru");
    print("3. Tampilkan Pegawai Ganjil");
    print("4. Tampilkan Pegawai Genap");
    print("5. Tampilkan Total Gaji");
    print("6. Hitung Tunjangan");
    print("7. Hitung Bonus Tahunan Pegawai");
    print("8. Hitung Gaji Bersih Pegawai");
    print("9. Keluar");
    stdout.write("Pilih menu: ");
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        tampilkanPegawai(pegawai);
        interfacePegawai();
        break;
      case 2:
        tambahPegawai(pegawai);
        interfacePegawai();
        break;
      case 3:
        tampilkanPegawaiGanjilGenap(pegawai, true);
        interfacePegawai();
        break;
      case 4:
        tampilkanPegawaiGanjilGenap(pegawai, false);
        interfacePegawai();
        break;
      case 5:
        totalGaji(pegawai);
        interfacePegawai();
        break;
      case 6:
        stdout.write("Masukkan jabatan untuk hitung tunjangan: ");
        String jabatan = stdin.readLineSync()!;
        hitungTunjanganPegawai(pegawai, jabatan: jabatan);
        interfacePegawai();
        break;
      case 7:
        stdout.write("Masukkan nama pegawai untuk hitung bonus tahunan: ");
        String nama = stdin.readLineSync()!;
        hitungBonusTahunanPegawai(pegawai, nama: nama);
        interfacePegawai();
        break;
      case 8:
        stdout.write("Masukkan nama pegawai untuk hitung gaji bersih: ");
        String nama = stdin.readLineSync()!;
        hitungGajiBersihPegawai(pegawai, nama: nama);
        interfacePegawai();
        break;
      case 9:
        print("Keluar");
        break;
      default:
        print("Pilihan tidak valid.");
    }
  }

  interfacePegawai();
}
