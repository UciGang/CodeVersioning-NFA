void main() {
  var nilaiAkhir = 80;
  var nilaiTugas = 70;

  var isNilaiAkhirBagus = nilaiAkhir >= 75;
  var isNilaiTugasBagus = nilaiTugas >= 75;

  print(isNilaiAkhirBagus);
  print(isNilaiTugasBagus);

  var isLulus = isNilaiAkhirBagus && isNilaiTugasBagus;
  print(isLulus);
}
