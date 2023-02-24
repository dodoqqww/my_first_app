import 'dart:async';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:my_first_app/app/app.locator.dart';
import 'package:my_first_app/services/bluetooth_service.dart' as my;
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ConnectionSheetModel extends FutureViewModel<void> {
  final _bluetoothService = locator<my.BluetoothService>();
  final _navigationService = locator<NavigationService>();

  List<ScanResult> scanResults = [];

  StreamSubscription? listenSearch;

  startSearch() {
    listenSearch = _bluetoothService.startSearch().listen((event) {
      if (!scanResults.any((element) =>
          element.peripheral.identifier == event.peripheral.identifier)) {
        scanResults.add(event);
        rebuildUi();
      }
    });
  }

  sendData() => _bluetoothService.sendData();

  connect(ScanResult device) async {
    await _bluetoothService.startProvisioning(device);
    _navigationService.back();
  }

  @override
  Future<void> futureToRun() => _bluetoothService.initClient();

  @override
  void dispose() {
    if (listenSearch != null) {
      listenSearch!.cancel();
    }
    super.dispose();
  }
}
