import 'dart:async';

import 'package:my_first_app/proto/ugk.pb.dart';
import 'package:my_first_app/services/provision/esp_prov.dart';
import 'package:my_first_app/services/provision/security_ble.dart';
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
        transport: TransportBLE(scanResult.peripheral),
        security: SecurityBLE(pop: 'abcd1234'));

    await prov!.establishSession(sec1: false);

    return prov!;
  }

  void sendData() async {
    List<int> asd = await prov!.sendReceiveUgkData(
        UgkPayload(getUgkStripsReq: GetUgkStripsReq.getDefault())
            .writeToBuffer());

    GetUgkStripsResp asd3 = GetUgkStripsResp.fromBuffer(asd);

    print(asd3);
  }
}
