import 'dart:typed_data';

import 'package:my_first_app/proto/session.pbserver.dart';
import 'package:my_first_app/proto/ugk.pb.dart';
import 'package:my_first_app/services/provision/security.dart';
import 'package:my_first_app/services/provision/security1.dart';
import 'package:my_first_app/services/provision/transport_ble.dart';
import 'package:my_first_app/utils/extensions.dart';

class EspProv {
  TransportBLE? transport;
  ProvSecurity? security;

  EspProv({required this.transport, required this.security});

  Future<void> establishSession() async {
    SessionData? responseData;

    await transport!.disconnect();

    if (await transport!.connect()) {
      while (await transport!.checkConnect()) {
        var request = await security!.securitySession(responseData);
        if (request == null) {
          return;
        }
        var response = await transport!
            .sendReceive('prov-session', request.writeToBuffer());
        if (response.isEmpty) {
          throw Exception('Empty response');
        }
        responseData = SessionData.fromBuffer(response);
      }
    }
    return;
  }

  Future<void> dispose() async {
    return await transport!.disconnect();
  }

  Future<Uint8List> sendReceiveCustomData(Uint8List data,
      {int packageSize = 256}) async {
    var i = data.length;
    var offset = 0;
    List<int> ret = []; // = new List<int>(0);
    while (i > 0) {
      var needToSend = data.sublist(offset, i < packageSize ? i : packageSize);
      var encrypted = await security!.encrypt(needToSend);
      var newData = await transport!.sendReceive('custom-data', encrypted);

      if (newData.length > 0) {
        // var decrypted = await (security!.decrypt(newData) as FutureOr<Uint8List>);
        var decrypted = await (security!.decrypt(newData));
        if (decrypted == null) return Uint8List(0);
        ret += List.from(decrypted);
      }
      i -= packageSize;
    }
    // return Uint8List.fromList(ret as List<int>);
    return Uint8List.fromList(ret);
  }

  Future<Uint8List> sendReceiveUgkData(Uint8List data,
      {int packageSize = 256}) async {
    var i = data.length;
    var offset = 0;
    List<int> ret = []; // = new List<int>(0);
    while (i > 0) {
      var needToSend = data.sublist(offset, i < packageSize ? i : packageSize);
      //    var encrypted = await security!.encrypt(needToSend);
      var newData = await transport!.sendReceive('ugk-config', needToSend);

      if (newData.length > 0) {
        //  var decrypted = await (security!.decrypt(newData));
        //  if (decrypted == null) return Uint8List(0);
        ret += List.from(newData);
      }
      i -= packageSize;
    }
    // return Uint8List.fromList(ret as List<int>);
    return ret.asUint8List();
  }
}
