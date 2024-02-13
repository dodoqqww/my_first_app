import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_ble_lib_ios_15/flutter_ble_lib.dart';
import 'package:my_first_app/proto/ugk.pb.dart';
import 'package:my_first_app/services/provision/esp_prov.dart';
import 'package:my_first_app/services/provision/security0.dart';
import 'package:my_first_app/services/provision/security1.dart';
import 'package:my_first_app/services/provision/transport_ble.dart';
//import 'package:flutter_blue/flutter_blue.dart' as external1;

class BluetoothService {
  // external1.FlutterBlue flutterBlue = external1.FlutterBlue.instance;

  final BleManager _bleManager = BleManager();

  EspProv? prov;

  initClient() async {
    if (await _bleManager.isClientCreated() == false) {
      await _bleManager.createClient();
    }
  }

  Stream<BluetoothState> bleStateStream() {
    return _bleManager.observeBluetoothState();
  }

  Stream<ScanResult> startSearch() {
    return _bleManager.startPeripheralScan(scanMode: ScanMode.balanced);
    //, uuids: [TransportBLE.PROV_BLE_SERVICE]
  }

  Future<void> stopScanBle() {
    return _bleManager.stopPeripheralScan();
  }

  Future<EspProv> startProvisioning(ScanResult scanResult) async {
    //await scanResult.peripheral.connect();

    // test
    prov = EspProv(
        transport: TransportBLE(scanResult.peripheral), security: Security0());

    await prov!.establishSession();

    return prov!;
  }

  void sendData() async {
    Uint8List asd = await prov!.sendReceiveUgkData(
        UgkPayload(getUgkStripsReq: GetUgkStripsReq.getDefault())
            .writeToBuffer());

    UgkPayload asd3 = UgkPayload.fromBuffer(asd);

    print(asd3);
  }

  void sendColorData(int brightness, int rgb) async {
    Uint8List asd = await prov!.sendReceiveUgkData(UgkPayload(
            setUgkColorReq: SetUgkColorReq(brightness: brightness, rgb: rgb))
        .writeToBuffer());

    UgkPayload asd3 = UgkPayload.fromBuffer(asd);

    print(asd3);
  }

  void sendColorDataRgb(int rgb) async {
    Uint8List asd = await prov!.sendReceiveUgkData(
        UgkPayload(setRgbCorretorReq: SetRgbCorrectorReq(rgbcorrector: rgb))
            .writeToBuffer());

    UgkPayload asd3 = UgkPayload.fromBuffer(asd);

    print(asd3);
  }
}
