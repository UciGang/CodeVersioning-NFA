import 'dart:io';

void main() {
  List<Map<String, dynamic>> pegawai = [
    {
      'id': 1,
      'nama': 'Fahmi',
      'jabatan': 'Manager',
      'gaji': 7000000,
      'tahunKerja': 5,
    },
    {
      'id': 2,
      'nama': 'Andi',
      'jabatan': 'Staff',
      'gaji': 5000000,
      'tahunKerja': 3,
    },
    {
      'id': 3,
      'nama': 'Budi',
      'jabatan': 'Staff',
      'gaji': 5000000,
      'tahunKerja': 3,
    },
  ];

  // Fungsi untuk menghitung total gaji pegawai
  num hitungTotalGaji(List<Map<String, dynamic>> daftarPegawai) {
    num totalGaji = 0;
    for (var p in daftarPegawai) {
      totalGaji += p['gaji'];
    }
    return totalGaji;
  }

  // Arrow function untuk menghitung gaji bersih setelah pajak 11%
  int Function(int) hitungGajiBersih = (gaji) => (gaji * 0.89).toInt();

  // Fungsi untuk menentukan tunjangan berdasarkan jabatan (default parameter)
  int hitungTunjangan(
    String jabatan, {
    int tunjanganManager = 3000000,
    int tunjanganStaff = 1500000,
    int tunjanganDefault = 1000000,
  }) {
    switch (jabatan.toLowerCase()) {
      case 'manager':
        return tunjanganManager;
      case 'staff':
        return tunjanganStaff;
      default:
        return tunjanganDefault;
    }
  }

  // Fungsi rekursif untuk menghitung bonus tahunan berdasarkan tahun kerja
  int hitungBonusTahunan(int tahunKerja, {int bonusPerTahun = 500000}) {
    if (tahunKerja <= 0) {
      return 0;
    }
    return bonusPerTahun +
        hitungBonusTahunan(tahunKerja - 1, bonusPerTahun: bonusPerTahun);
  }

  // Menu Pilihan Fitur (di awal)
  while (true) {
    print('\nMenu:');
    print('1. Input Data Pegawai');
    print('2. Tampilkan Semua Data Pegawai');
    print('3. Tampilkan Data Pegawai (Nomor Urut)');
    print('4. Tampilkan Data Pegawai (ID Genap)');
    print('5. Tampilkan Data Pegawai (ID Ganjil)');
    print('6. Hitung Total Gaji Pegawai');
    print('7. Hitung Tunjangan Pegawai');
    print('8. Hitung Bonus Tahunan Pegawai');
    print('9. Hitung Gaji Bersih Pegawai');
    print('0. Keluar');

    stdout.write('Pilih fitur: ');
    int pilihan = int.parse(stdin.readLineSync()!);

    switch (pilihan) {
      case 1:
        stdout.write('Masukkan jumlah pegawai: ');
        int jumlahPegawai = int.parse(stdin.readLineSync()!);

        for (int i = 0; i < jumlahPegawai; i++) {
          print('\nData Pegawai ke-${i + 1}:');

          stdout.write('ID: ');
          int id = int.parse(stdin.readLineSync()!);

          stdout.write('Nama: ');
          String nama = stdin.readLineSync()!;

          stdout.write('Jabatan: ');
          String jabatan = stdin.readLineSync()!;

          stdout.write('Gaji: ');
          int gaji = int.parse(stdin.readLineSync()!);

          stdout.write('Tahun Kerja: ');
          int tahunKerja = int.parse(stdin.readLineSync()!);

          pegawai.add({
            'id': id,
            'nama': nama,
            'jabatan': jabatan,
            'gaji': gaji,
            'tahunKerja': tahunKerja,
          });
        }
        break;
      case 2:
        print('\nData Pegawai:');
        for (var p in pegawai) {
          print(p);
        }
        break;
      case 3:
        print('\nData Pegawai (Nomor Urut):');
        for (int i = 0; i < pegawai.length; i++) {
          print('${i + 1}. ${pegawai[i]}');
        }
        break;
      case 4:
        print('\nData Pegawai (ID Genap):');
        for (var p in pegawai.where((p) => p['id'] % 2 == 0)) {
          print(p);
        }
        break;
      case 5:
        print('\nData Pegawai (ID Ganjil):');
        for (var p in pegawai.where((p) => p['id'] % 2 != 0)) {
          print(p);
        }
        break;
      case 6:
        num totalGaji = hitungTotalGaji(pegawai);
        print('\nTotal Gaji Pegawai: $totalGaji');
        break;
      case 7:
        print('\nTunjangan Pegawai:');
        for (var p in pegawai) {
          int tunjangan = hitungTunjangan(p['jabatan']);
          print(
            'Nama: ${p['nama']}, Jabatan: ${p['jabatan']}, Tunjangan: $tunjangan',
          );
        }
        break;
      case 8:
        print('\nBonus Tahunan Pegawai:');
        for (var p in pegawai) {
          int bonus = hitungBonusTahunan(p['tahunKerja']);
          print(
            'Nama: ${p['nama']}, Tahun Kerja: ${p['tahunKerja']}, Bonus: $bonus',
          );
        }
        break;
      case 9:
        print('\nGaji Bersih Pegawai Setelah Pajak:');
        for (var p in pegawai) {
          int gajiBersih = hitungGajiBersih(p['gaji']);
          print(
            'Nama: ${p['nama']}, Gaji Sebelum Pajak: ${p['gaji']}, Gaji Bersih: $gajiBersih',
          );
        }
        break;
      case 0:
        print('Keluar dari program.');
        return;
      default:
        print('Pilihan tidak valid.');
    }
  }
}
