void main() {
  Map<String, double> buah = {
    'apel': 5000,
    'nanas': 8000,
    'mangga': 8000,
    'lemon': 10000,
  };

  buah['alpukat'] = 7000;

  print("Tampilkan semua key : ${buah.keys}");
  print("Tampilkan semua value : ${buah.values}");
  print("apakah buah habis : ${buah.isEmpty}");
  print("apakah buah masih ada : ${buah.isNotEmpty}");
  print("ada berapa jenis buah : ${buah.length}");
}
