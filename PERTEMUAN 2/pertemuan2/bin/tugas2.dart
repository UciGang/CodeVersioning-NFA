void main() {
  var namaMahasiswa = ["Rifky", "Arman", "Zidan", "Roza", "Farhat"];
  var mataKuliah = {"DDP", "Code Versioning", "Databases"};
  var matkul = mataKuliah.toList();

  Map<String, Map> dataMahasiswa = {
    namaMahasiswa[0]: {'nim': '111', 'matkul': '${matkul[0]} & ${matkul[1]}'},
    namaMahasiswa[1]: {'nim': '112', 'matkul': '${matkul[1]} & ${matkul[2]}'},
    namaMahasiswa[2]: {'nim': '113', 'matkul': '${matkul[0]} & ${matkul[2]}'},
    namaMahasiswa[3]: {
      'nim': '114',
      'matkul': '${matkul[0]}, ${matkul[1]} & ${matkul[2]}',
    },
    namaMahasiswa[4]: {'nim': '115', 'matkul': '${matkul[0]}, ${matkul[1]}'},
  };

  print("data awal");
  print(dataMahasiswa);

  namaMahasiswa.add("Haris");

  dataMahasiswa[namaMahasiswa[5]] = {
    'nim': '116',
    'matkul': '${matkul[0]} & ${matkul[2]}',
  };

  print("data setelah ditambah");
  print(dataMahasiswa);

  dataMahasiswa.remove(namaMahasiswa[4]);

  print("data setelah dihapus");
  print(dataMahasiswa);
}
