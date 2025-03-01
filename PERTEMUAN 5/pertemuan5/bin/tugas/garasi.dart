import 'mobil.dart';
import 'motor.dart';

class Garasi {
  List<Mobil> mobils = [];
  List<Motor> motors = [];

  void addMobil(Mobil mobil) {
    mobils.add(mobil);
  }

  void addMotor(Motor motor) {
    motors.add(motor);
  }

  void displayGarasi() {
    for (var mobil in mobils) {
      mobil.info();
    }

    for (var motor in motors) {
      motor.info();
    }
  }

  void servisKendaraan() {
    print("Servis semua kendaraan...");
    for (var mobil in mobils) {
      mobil.servis();
    }
    for (var motor in motors) {
      motor.servis();
    }
  }
}
