import 'dart:typed_data';

import 'package:my_first_app/proto/session.pbserver.dart';
import 'package:my_first_app/proto/ugk.pb.dart';
import 'package:my_first_app/services/provision/security_ble.dart';
import 'package:my_first_app/services/provision/transport_ble.dart';

class EspProv {
  TransportBLE transport;
  SecurityBLE security;

  EspProv({required this.transport, required this.security});

  Future<bool> establishSession({required bool sec1}) async {
    SessionData responseData = SessionData();

    await transport.disconnect();

    if (await transport.connect()) {
      // if (sec1) {
      //   while (await transport.checkConnect()) {
      //     var request = await security.securitySession(responseData);
      //     if (request == null) {
      //       return false;
      //     }
      //     var response = await transport.sendReceive(
      //         'prov-session', request.writeToBuffer());
      //     if (response.isEmpty) {
      //       throw Exception('Empty response');
      //     }
      //     responseData = SessionData.fromBuffer(response);
      //   }
      // }
      print("connected");
      return true;
    }
    return false;
  }

  Future<void> dispose() async {
    return await transport.disconnect();
  }

  Future<Uint8List> sendReceiveCustomData(Uint8List data,
      {int packageSize = 256}) async {
    var i = data.length;
    var offset = 0;
    List<int> ret = <int>[];
    while (i > 0) {
      var needToSend = data.sublist(offset, i < packageSize ? i : packageSize);
      var encrypted = await security.encrypt(needToSend);
      var newData = await transport.sendReceive('custom-data', encrypted);

      if ((newData?.length ?? 0) > 0) {
        var decrypted = await security.decrypt(newData);
        if (decrypted != null) {
          ret += List.from(decrypted);
        }
      }
      i -= packageSize;
    }
    return Uint8List.fromList(ret);
  }

  Future<Uint8List> sendReceiveUgkData(Uint8List data,
      {int packageSize = 512}) async {
    var i = data.length;
    var offset = 0;
    List<int> ret = [];
    while (i > 0) {
      var needToSend = data.sublist(offset, i < packageSize ? i : packageSize);
      //var encrypted = await security.encrypt(needToSend);
      var newData = await transport.sendReceive('ugk-config', data);

      // if ((newData?.length ?? 0) > 0) {
      //   var decrypted = await security.decrypt(newData);
      //   if (decrypted != null) {
      //     ret += List.from(decrypted);
      //   }
      // }
      i -= packageSize;
    }
    return Uint8List.fromList(ret);
  }
}
