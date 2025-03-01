void main() {
  List<int> scores = [80, 90, 85, 70, 95];
  int total = 0;

  for (var score in scores) {
    total += score;
  }

  double average = total / scores.length;
  print("Rata-rata nilai: $average");

  for (var score in scores) {
    if (score >= 75) {
      print("Nilai $score: Lulus");
    } else {
      print("Nilai $score: Tidak Lulus");
    }
  }
}
