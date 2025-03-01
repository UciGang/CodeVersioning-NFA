import 'dart:io';

void main() {
  List<Map<String, dynamic>> pegawai = [
    {'id': 1, 'nama': 'Uci', 'jabatan': 'Manager', 'gaji': 7000000},
    {'id': 2, 'nama': 'Rifky', 'jabatan': 'Supervisor', 'gaji': 6000000},
    {'id': 3, 'nama': 'Andi', 'jabatan': 'Staff', 'gaji': 4500000},
    {'id': 4, 'nama': 'Budi', 'jabatan': 'Staff', 'gaji': 4500000},
    {'id': 5, 'nama': 'Dewi', 'jabatan': 'Staff', 'gaji': 4500000},
  ];

  void tambahPegawai(
    List<Map<String, dynamic>> pegawai,
    Map<String, dynamic> pegawaiBaru,
  ) {
    pegawai.add(pegawaiBaru);
    print("\nPegawai baru berhasil ditambahkan:");
    print(
      "${pegawaiBaru['id']}. ${pegawaiBaru['nama']} - ${pegawaiBaru['jabatan']} - ${pegawaiBaru['gaji']}",
    );
  }

  void cariPegawai(List<Map<String, dynamic>> pegawai, String nama) {
    bool ditemukan = false;
    pegawai.forEach((p) {
      if (p['nama'].toLowerCase() == nama.toLowerCase()) {
        print(
          "\nPegawai ditemukan: ${p['id']}. ${p['nama']} - ${p['jabatan']} - ${p['gaji']}",
        );
        ditemukan = true;
      }
    });
    if (!ditemukan) {
      print("\nPegawai dengan nama $nama tidak ditemukan.");
    }
  }

  stdout.write("\nMasukkan nama pegawai yang ingin dicari: ");
  String cariNama = stdin.readLineSync()!;
  cariPegawai(pegawai, cariNama);

  print("\n=== Daftar Pegawai ===");
  pegawai.forEach((p) {
    print("${p['id']}. ${p['nama']} - ${p['jabatan']} - ${p['gaji']}");
  });

  tambahPegawai(pegawai, {
    'id': 6,
    'nama': 'Fajar',
    'jabatan': 'Staff',
    'gaji': 4500000,
  });

  int jumlahGajiTinggi = pegawai.where((p) => p['gaji'] > 5000000).length;
  print("\nJumlah pegawai dengan gaji di atas Rp.5.000.000: $jumlahGajiTinggi");
}
