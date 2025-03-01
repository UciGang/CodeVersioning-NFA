void main() {
  int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  print("faktorial dari 5 adalah: ${factorial(5)}");
}
