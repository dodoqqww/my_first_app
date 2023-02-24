///
//  Generated code. Do not modify.
//  source: ugk.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use fxStartUpCfgDescriptor instead')
const FxStartUpCfg$json = const {
  '1': 'FxStartUpCfg',
  '2': const [
    const {'1': 'color', '3': 1, '4': 1, '5': 13, '10': 'color'},
    const {
      '1': 'load_brightness',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'loadBrightness'
    },
    const {'1': 'load_speed', '3': 3, '4': 1, '5': 13, '10': 'loadSpeed'},
    const {'1': 'cooling_en', '3': 4, '4': 1, '5': 8, '10': 'coolingEn'},
    const {'1': 'preload_en', '3': 5, '4': 1, '5': 8, '10': 'preloadEn'},
  ],
};

/// Descriptor for `FxStartUpCfg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fxStartUpCfgDescriptor = $convert.base64Decode(
    'CgxGeFN0YXJ0VXBDZmcSFAoFY29sb3IYASABKA1SBWNvbG9yEicKD2xvYWRfYnJpZ2h0bmVzcxgCIAEoDVIObG9hZEJyaWdodG5lc3MSHQoKbG9hZF9zcGVlZBgDIAEoDVIJbG9hZFNwZWVkEh0KCmNvb2xpbmdfZW4YBCABKAhSCWNvb2xpbmdFbhIdCgpwcmVsb2FkX2VuGAUgASgIUglwcmVsb2FkRW4=');
@$core.Deprecated('Use fxStaticCfgDescriptor instead')
const FxStaticCfg$json = const {
  '1': 'FxStaticCfg',
  '2': const [
    const {'1': 'color', '3': 1, '4': 1, '5': 13, '10': 'color'},
  ],
};

/// Descriptor for `FxStaticCfg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fxStaticCfgDescriptor =
    $convert.base64Decode('CgtGeFN0YXRpY0NmZxIUCgVjb2xvchgBIAEoDVIFY29sb3I=');
@$core.Deprecated('Use setUgkFxReqDescriptor instead')
const SetUgkFxReq$json = const {
  '1': 'SetUgkFxReq',
  '2': const [
    const {
      '1': 'startup_cfg',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.FxStartUpCfg',
      '9': 0,
      '10': 'startupCfg'
    },
    const {
      '1': 'static_cfg',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.FxStaticCfg',
      '9': 0,
      '10': 'staticCfg'
    },
  ],
  '8': const [
    const {'1': 'fx'},
  ],
};

/// Descriptor for `SetUgkFxReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUgkFxReqDescriptor = $convert.base64Decode(
    'CgtTZXRVZ2tGeFJlcRIwCgtzdGFydHVwX2NmZxgBIAEoCzINLkZ4U3RhcnRVcENmZ0gAUgpzdGFydHVwQ2ZnEi0KCnN0YXRpY19jZmcYAiABKAsyDC5GeFN0YXRpY0NmZ0gAUglzdGF0aWNDZmdCBAoCZng=');
@$core.Deprecated('Use setUgkFxRespDescriptor instead')
const SetUgkFxResp$json = const {
  '1': 'SetUgkFxResp',
  '2': const [
    const {'1': 'nop', '3': 1, '4': 1, '5': 5, '10': 'nop'},
  ],
};

/// Descriptor for `SetUgkFxResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUgkFxRespDescriptor =
    $convert.base64Decode('CgxTZXRVZ2tGeFJlc3ASEAoDbm9wGAEgASgFUgNub3A=');
@$core.Deprecated('Use pixelInfoDescriptor instead')
const PixelInfo$json = const {
  '1': 'PixelInfo',
  '2': const [
    const {'1': 'rgb', '3': 1, '4': 1, '5': 13, '10': 'rgb'},
    const {'1': 'brightness', '3': 2, '4': 1, '5': 13, '10': 'brightness'},
  ],
};

/// Descriptor for `PixelInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pixelInfoDescriptor = $convert.base64Decode(
    'CglQaXhlbEluZm8SEAoDcmdiGAEgASgNUgNyZ2ISHgoKYnJpZ2h0bmVzcxgCIAEoDVIKYnJpZ2h0bmVzcw==');
@$core.Deprecated('Use getUgkStripsReqDescriptor instead')
const GetUgkStripsReq$json = const {
  '1': 'GetUgkStripsReq',
  '2': const [
    const {'1': 'nop', '3': 1, '4': 1, '5': 5, '10': 'nop'},
  ],
};

/// Descriptor for `GetUgkStripsReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUgkStripsReqDescriptor =
    $convert.base64Decode('Cg9HZXRVZ2tTdHJpcHNSZXESEAoDbm9wGAEgASgFUgNub3A=');
@$core.Deprecated('Use getUgkStripsRespDescriptor instead')
const GetUgkStripsResp$json = const {
  '1': 'GetUgkStripsResp',
  '2': const [
    const {
      '1': 'driver_side_strip',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.PixelInfo',
      '8': const {},
      '10': 'driverSideStrip'
    },
    const {
      '1': 'passenger_side_strip',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.PixelInfo',
      '8': const {},
      '10': 'passengerSideStrip'
    },
    const {
      '1': 'front_side_strip',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.PixelInfo',
      '8': const {},
      '10': 'frontSideStrip'
    },
  ],
};

/// Descriptor for `GetUgkStripsResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUgkStripsRespDescriptor = $convert.base64Decode(
    'ChBHZXRVZ2tTdHJpcHNSZXNwEj0KEWRyaXZlcl9zaWRlX3N0cmlwGAEgAygLMgouUGl4ZWxJbmZvQgWSPwIQLVIPZHJpdmVyU2lkZVN0cmlwEkMKFHBhc3Nlbmdlcl9zaWRlX3N0cmlwGAIgAygLMgouUGl4ZWxJbmZvQgWSPwIQLVIScGFzc2VuZ2VyU2lkZVN0cmlwEjsKEGZyb250X3NpZGVfc3RyaXAYAyADKAsyCi5QaXhlbEluZm9CBZI/AhAgUg5mcm9udFNpZGVTdHJpcA==');
@$core.Deprecated('Use ugkPayloadDescriptor instead')
const UgkPayload$json = const {
  '1': 'UgkPayload',
  '2': const [
    const {
      '1': 'set_ugk_fx_req',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.SetUgkFxReq',
      '9': 0,
      '10': 'setUgkFxReq'
    },
    const {
      '1': 'set_ugk_fx_resp',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.SetUgkFxResp',
      '9': 0,
      '10': 'setUgkFxResp'
    },
    const {
      '1': 'get_ugk_strips_req',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.GetUgkStripsReq',
      '9': 0,
      '10': 'getUgkStripsReq'
    },
    const {
      '1': 'get_ugk_strips_resp',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.GetUgkStripsResp',
      '9': 0,
      '10': 'getUgkStripsResp'
    },
  ],
  '8': const [
    const {'1': 'payload'},
  ],
};

/// Descriptor for `UgkPayload`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ugkPayloadDescriptor = $convert.base64Decode(
    'CgpVZ2tQYXlsb2FkEjMKDnNldF91Z2tfZnhfcmVxGAEgASgLMgwuU2V0VWdrRnhSZXFIAFILc2V0VWdrRnhSZXESNgoPc2V0X3Vna19meF9yZXNwGAIgASgLMg0uU2V0VWdrRnhSZXNwSABSDHNldFVna0Z4UmVzcBI/ChJnZXRfdWdrX3N0cmlwc19yZXEYAyABKAsyEC5HZXRVZ2tTdHJpcHNSZXFIAFIPZ2V0VWdrU3RyaXBzUmVxEkIKE2dldF91Z2tfc3RyaXBzX3Jlc3AYBCABKAsyES5HZXRVZ2tTdHJpcHNSZXNwSABSEGdldFVna1N0cmlwc1Jlc3BCCQoHcGF5bG9hZA==');
