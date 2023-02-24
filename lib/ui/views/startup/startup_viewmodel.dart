import 'dart:async';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/app/app.router.dart';
import 'package:my_first_app/services/bluetooth_service.dart';

class StartupViewModel extends StreamViewModel {
  final _navigationService = locator<NavigationService>();

  final _bluetoothService = locator<BluetoothService>();

  Future intiBle() async => await _bluetoothService.initClient();

  Future navigateToBottomNavView() =>
      _navigationService.navigateToBottomNavView();

  Future navigateToStartupView() => _navigationService.navigateToStartupView();

  @override
  Stream<BluetoothState> get stream => _bluetoothService.bleStateStream();
}
