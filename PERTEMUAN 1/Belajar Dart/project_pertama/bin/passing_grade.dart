void main() {
  String nama = "Rifky";
  int usia = 22;
  double ipk = 3.77;
  const double cumlaude = 3.5;
  bool isPassed = ipk >= cumlaude;
  var matkul = ['DDP', 'Databases', 'Design'];

  final Set<String> uniqueMatkul = {'DDP', 'Databases', 'Framework'};

  double average = (ipk + 2 + 1) / 3;

  print('nama : $nama');
  print('usia : $usia');
  print('ipk : $ipk');
  print('status : ${isPassed ? 'cumlaude' : 'gagal'}');
  print('matkul : $matkul');
  print('rerata : $average');
  print('matkul : $uniqueMatkul');
}
