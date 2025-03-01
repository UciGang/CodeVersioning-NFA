import 'dart:io';

void main() {
  String usernameBenar = 'admin';
  String passwordBenar = '12345';
  int percobaan = 0;
  int maxPercobaan = 3;
  bool isLogin = false;

  while (percobaan < maxPercobaan && !isLogin) {
    stdout.write("Masukkan Username : ");
    String username = stdin.readLineSync()!;

    stdout.write("Masukkan Password : ");
    String password = stdin.readLineSync()!;

    if (username == usernameBenar && password == passwordBenar) {
      print("login berhasil! Welcome $username.");
      isLogin = true;
    } else {
      percobaan++;
      print("Login gagal! percobaan ke-$percobaan dari $maxPercobaan.");

      if (percobaan == maxPercobaan) {
        print("Anda telah mencapai batas maksimal percobaan. Akun diblokir!");
      }
    }
  }

  // int counter = 1;
  // while (counter <= 5) {
  //   print("Counter : $counter");
  //   counter++;
  // }
}
