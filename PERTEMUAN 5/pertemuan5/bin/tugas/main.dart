import 'mobil.dart';
import 'motor.dart';
import 'garasi.dart';

void main() {
  var garasi = Garasi();

  var mobil1 = Mobil("Rush", 2019, "Putih");
  var motor1 = Motor("Beat", 2015, "Merah", true);

  print("Tambah kendaraan ke garasi...");
  garasi.addMobil(mobil1);
  garasi.addMotor(motor1);

  garasi.displayGarasi();
  garasi.servisKendaraan();
}
