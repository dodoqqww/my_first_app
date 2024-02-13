import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:cryptography/cryptography.dart';
import 'package:my_first_app/proto/sec0.pb.dart';
import 'package:my_first_app/proto/sec1.pb.dart';
import 'package:my_first_app/proto/session.pb.dart';
import 'package:my_first_app/services/provision/security.dart';
import 'package:my_first_app/utils/extensions.dart';

import 'crypt.dart';

class Security0 implements ProvSecurity {
  final bool verbose;
  SecurityState sessionState;
  late SimpleKeyPair clientKey;
  late SimplePublicKey devicePublicKey;
  Uint8List? deviceRandom;
  Crypt crypt = Crypt();
  X25519 x25519 = X25519();
  Sha256 sha256 = Sha256();

  Security0({this.sessionState = SecurityState.REQUEST1, this.verbose = false});

  void _verbose(dynamic data) {
    if (verbose) {
      print('+++ $data +++');
    }
  }

  @override
  Future<Uint8List?> encrypt(Uint8List data) async {
    _verbose('raw before process ${data.toString()}');
    return crypt.crypt(data);
  }

  @override
  Future<Uint8List?> decrypt(Uint8List data) async {
    return encrypt(data);
  }

  Future<void> _generateKey() async {
    clientKey = await x25519.newKeyPair();
  }

  @override
  Future<SessionData?> securitySession(SessionData? responseData) async {
    if (sessionState == SecurityState.REQUEST1) {
      sessionState = SecurityState.RESPONSE1;
      return await setup0Request();
    }
    if (sessionState == SecurityState.RESPONSE1) {
      sessionState = SecurityState.FINISH;
      await setup0Response(responseData!);
      return null;
    }
    throw Exception('Unexpected state');
  }

  Future<SessionData> setup0Request() async {
    _verbose('setup0Request');
    var setupRequest = new SessionData();

    setupRequest.secVer = SecSchemeVersion.SecScheme0;
    await _generateKey();
    SessionCmd0 sc0 = SessionCmd0();
    List<int> temp =
        await clientKey.extractPublicKey().then((value) => value.bytes);
    sc0.clientPubkey = temp;
    // await clientKey.extractPublicKey().byte;
    Sec0Payload sec0 = Sec0Payload();
    setupRequest.sec0 = sec0;
    _verbose('setup0Request: clientPubkey = ${temp.toString()}');
    return setupRequest;
  }

  Future<SessionData> setup0Response(SessionData responseData) async {
    SessionData setupResp = responseData;
    if (setupResp.secVer != SecSchemeVersion.SecScheme0) {
      throw Exception('Invalid sec scheme');
    }
    //  devicePublicKey = SimplePublicKey(setupResp.sec1.sr0.devicePubkey,
    //      type: x25519.keyPairType);
    //  deviceRandom = setupResp.sec0.sr as Uint8List?;

    //  _verbose(
    //      'setup0Response:Device public key ${devicePublicKey.bytes.toString()}');
    //  _verbose('setup0Response:Device random ${deviceRandom.toString()}');

    //  final sharedKey = await x25519.sharedSecretKey(
    //      keyPair: clientKey, remotePublicKey: devicePublicKey);
    //  var sharedK = await sharedKey.extractBytes();
    //  _verbose('setup0Response: Shared key calculated: ${sharedK.toString()}');

    //  await crypt.init(sharedK as Uint8List, deviceRandom);
    //  _verbose(
    //      'setup0Response: cipherSecretKey: ${sharedK.toString()} cipherNonce: ${deviceRandom.toString()}');

    return setupResp;
  }
}
