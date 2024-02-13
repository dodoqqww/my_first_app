import 'dart:ui';

import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/bluetooth_service.dart';

class AdminViewModel extends BaseViewModel {
  final _bluetoothService = locator<BluetoothService>();

  double redSliderValue = 255;
  double greenSliderValue = 0;
  double blueSliderValue = 255;

  Color selectedColor = Color(0xffff00ff);

  int refreshRate = 100;

  //Duration period = Duration(milliseconds: 1000);

  final stopwatch = Stopwatch()..start();

  SettingsViewModel() {}

  changeColor(double value, int colorIndex) {
    switch (colorIndex) {
      case 1:
        redSliderValue = value;
        break;
      case 2:
        greenSliderValue = value;
        break;
      case 3:
        blueSliderValue = value;
        break;
      default:
    }

    this.selectedColor = Color.fromARGB(1, redSliderValue.toInt(),
        greenSliderValue.toInt(), blueSliderValue.toInt());

    if (stopwatch.elapsedMilliseconds > refreshRate) {
      stopwatch.reset();
      print("ads");
      sendData();
    }

    rebuildUi();
  }

  setRate(String text) {
    this.refreshRate = int.parse(text);
    print(this.refreshRate);
  }

  void sendData() {
    _bluetoothService.sendColorDataRgb(this.selectedColor.withAlpha(0).value);
  }
}
