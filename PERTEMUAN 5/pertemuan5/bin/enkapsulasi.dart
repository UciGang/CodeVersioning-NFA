class BankAccount {
  String _accNumber;
  double _balance;

  BankAccount(this._accNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
  }

  String getAccNum() {
    return _accNumber;
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount myAccount = BankAccount("12345", 1000);
  myAccount.deposit(2000);
  print("Nomor Akun: ${myAccount.getAccNum()}");
  print("Saldo: Rp.${myAccount.getBalance()}");
}
