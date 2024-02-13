import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/bluetooth_service.dart';

class SettingsViewModel extends BaseViewModel {
  final _bluetoothService = locator<BluetoothService>();

  Color selectedColor = Color(0xffff00ff);

  double redSliderValue = 255;
  double greenSliderValue = 0;
  double blueSliderValue = 255;

  Color selectedColorAdmin = Color(0xffff00ff);

  final refreshRateController = TextEditingController();

  int refreshRate = 100;

  //Duration period = Duration(milliseconds: 1000);

  final stopwatch = Stopwatch()..start();

  late StreamSubscription streamSubscription;

  SettingsViewModel() {}

  changeColor(Color value) {
    this.selectedColor = value;

    if (stopwatch.elapsedMilliseconds > refreshRate) {
      stopwatch.reset();
      print("ads");
      sendData();
    }

    rebuildUi();
  }

  changeColorAdmin(double value, int colorIndex) {
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

    this.selectedColorAdmin = Color.fromARGB(1, redSliderValue.toInt(),
        greenSliderValue.toInt(), blueSliderValue.toInt());

    if (stopwatch.elapsedMilliseconds > refreshRate) {
      stopwatch.reset();
      print("ads");
      sendDataAdmin();
    }

    rebuildUi();
  }

  setRate(String text) {
    this.refreshRate = int.parse(text);
    print(this.refreshRate);
  }

  void sendData() {
    _bluetoothService.sendColorData(0, this.selectedColor.withAlpha(0).value);
  }

  void sendDataAdmin() {
    _bluetoothService
        .sendColorDataRgb(this.selectedColorAdmin.withAlpha(0).value);
  }
}
