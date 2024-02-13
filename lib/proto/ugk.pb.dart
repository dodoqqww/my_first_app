///
//  Generated code. Do not modify.
//  source: ugk.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FxStartUpCfg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FxStartUpCfg', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loadBrightness', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loadSpeed', $pb.PbFieldType.OU3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coolingEn')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preloadEn')
    ..hasRequiredFields = false
  ;

  FxStartUpCfg._() : super();
  factory FxStartUpCfg({
    $core.int? color,
    $core.int? loadBrightness,
    $core.int? loadSpeed,
    $core.bool? coolingEn,
    $core.bool? preloadEn,
  }) {
    final _result = create();
    if (color != null) {
      _result.color = color;
    }
    if (loadBrightness != null) {
      _result.loadBrightness = loadBrightness;
    }
    if (loadSpeed != null) {
      _result.loadSpeed = loadSpeed;
    }
    if (coolingEn != null) {
      _result.coolingEn = coolingEn;
    }
    if (preloadEn != null) {
      _result.preloadEn = preloadEn;
    }
    return _result;
  }
  factory FxStartUpCfg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FxStartUpCfg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FxStartUpCfg clone() => FxStartUpCfg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FxStartUpCfg copyWith(void Function(FxStartUpCfg) updates) => super.copyWith((message) => updates(message as FxStartUpCfg)) as FxStartUpCfg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FxStartUpCfg create() => FxStartUpCfg._();
  FxStartUpCfg createEmptyInstance() => create();
  static $pb.PbList<FxStartUpCfg> createRepeated() => $pb.PbList<FxStartUpCfg>();
  @$core.pragma('dart2js:noInline')
  static FxStartUpCfg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FxStartUpCfg>(create);
  static FxStartUpCfg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get color => $_getIZ(0);
  @$pb.TagNumber(1)
  set color($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get loadBrightness => $_getIZ(1);
  @$pb.TagNumber(2)
  set loadBrightness($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLoadBrightness() => $_has(1);
  @$pb.TagNumber(2)
  void clearLoadBrightness() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get loadSpeed => $_getIZ(2);
  @$pb.TagNumber(3)
  set loadSpeed($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLoadSpeed() => $_has(2);
  @$pb.TagNumber(3)
  void clearLoadSpeed() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get coolingEn => $_getBF(3);
  @$pb.TagNumber(4)
  set coolingEn($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoolingEn() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoolingEn() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get preloadEn => $_getBF(4);
  @$pb.TagNumber(5)
  set preloadEn($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPreloadEn() => $_has(4);
  @$pb.TagNumber(5)
  void clearPreloadEn() => clearField(5);
}

class FxStaticCfg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FxStaticCfg', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  FxStaticCfg._() : super();
  factory FxStaticCfg({
    $core.int? color,
  }) {
    final _result = create();
    if (color != null) {
      _result.color = color;
    }
    return _result;
  }
  factory FxStaticCfg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FxStaticCfg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FxStaticCfg clone() => FxStaticCfg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FxStaticCfg copyWith(void Function(FxStaticCfg) updates) => super.copyWith((message) => updates(message as FxStaticCfg)) as FxStaticCfg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FxStaticCfg create() => FxStaticCfg._();
  FxStaticCfg createEmptyInstance() => create();
  static $pb.PbList<FxStaticCfg> createRepeated() => $pb.PbList<FxStaticCfg>();
  @$core.pragma('dart2js:noInline')
  static FxStaticCfg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FxStaticCfg>(create);
  static FxStaticCfg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get color => $_getIZ(0);
  @$pb.TagNumber(1)
  set color($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => clearField(1);
}

enum SetUgkFxReq_Fx {
  startupCfg, 
  staticCfg, 
  notSet
}

class SetUgkFxReq extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SetUgkFxReq_Fx> _SetUgkFxReq_FxByTag = {
    1 : SetUgkFxReq_Fx.startupCfg,
    2 : SetUgkFxReq_Fx.staticCfg,
    0 : SetUgkFxReq_Fx.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetUgkFxReq', createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<FxStartUpCfg>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startupCfg', subBuilder: FxStartUpCfg.create)
    ..aOM<FxStaticCfg>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staticCfg', subBuilder: FxStaticCfg.create)
    ..hasRequiredFields = false
  ;

  SetUgkFxReq._() : super();
  factory SetUgkFxReq({
    FxStartUpCfg? startupCfg,
    FxStaticCfg? staticCfg,
  }) {
    final _result = create();
    if (startupCfg != null) {
      _result.startupCfg = startupCfg;
    }
    if (staticCfg != null) {
      _result.staticCfg = staticCfg;
    }
    return _result;
  }
  factory SetUgkFxReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUgkFxReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUgkFxReq clone() => SetUgkFxReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUgkFxReq copyWith(void Function(SetUgkFxReq) updates) => super.copyWith((message) => updates(message as SetUgkFxReq)) as SetUgkFxReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetUgkFxReq create() => SetUgkFxReq._();
  SetUgkFxReq createEmptyInstance() => create();
  static $pb.PbList<SetUgkFxReq> createRepeated() => $pb.PbList<SetUgkFxReq>();
  @$core.pragma('dart2js:noInline')
  static SetUgkFxReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUgkFxReq>(create);
  static SetUgkFxReq? _defaultInstance;

  SetUgkFxReq_Fx whichFx() => _SetUgkFxReq_FxByTag[$_whichOneof(0)]!;
  void clearFx() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FxStartUpCfg get startupCfg => $_getN(0);
  @$pb.TagNumber(1)
  set startupCfg(FxStartUpCfg v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartupCfg() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartupCfg() => clearField(1);
  @$pb.TagNumber(1)
  FxStartUpCfg ensureStartupCfg() => $_ensure(0);

  @$pb.TagNumber(2)
  FxStaticCfg get staticCfg => $_getN(1);
  @$pb.TagNumber(2)
  set staticCfg(FxStaticCfg v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStaticCfg() => $_has(1);
  @$pb.TagNumber(2)
  void clearStaticCfg() => clearField(2);
  @$pb.TagNumber(2)
  FxStaticCfg ensureStaticCfg() => $_ensure(1);
}

class SetUgkFxResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetUgkFxResp', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nop', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SetUgkFxResp._() : super();
  factory SetUgkFxResp({
    $core.int? nop,
  }) {
    final _result = create();
    if (nop != null) {
      _result.nop = nop;
    }
    return _result;
  }
  factory SetUgkFxResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUgkFxResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUgkFxResp clone() => SetUgkFxResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUgkFxResp copyWith(void Function(SetUgkFxResp) updates) => super.copyWith((message) => updates(message as SetUgkFxResp)) as SetUgkFxResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetUgkFxResp create() => SetUgkFxResp._();
  SetUgkFxResp createEmptyInstance() => create();
  static $pb.PbList<SetUgkFxResp> createRepeated() => $pb.PbList<SetUgkFxResp>();
  @$core.pragma('dart2js:noInline')
  static SetUgkFxResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUgkFxResp>(create);
  static SetUgkFxResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nop => $_getIZ(0);
  @$pb.TagNumber(1)
  set nop($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNop() => $_has(0);
  @$pb.TagNumber(1)
  void clearNop() => clearField(1);
}

class PixelInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PixelInfo', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rgb', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brightness', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  PixelInfo._() : super();
  factory PixelInfo({
    $core.int? rgb,
    $core.int? brightness,
  }) {
    final _result = create();
    if (rgb != null) {
      _result.rgb = rgb;
    }
    if (brightness != null) {
      _result.brightness = brightness;
    }
    return _result;
  }
  factory PixelInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PixelInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PixelInfo clone() => PixelInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PixelInfo copyWith(void Function(PixelInfo) updates) => super.copyWith((message) => updates(message as PixelInfo)) as PixelInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PixelInfo create() => PixelInfo._();
  PixelInfo createEmptyInstance() => create();
  static $pb.PbList<PixelInfo> createRepeated() => $pb.PbList<PixelInfo>();
  @$core.pragma('dart2js:noInline')
  static PixelInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PixelInfo>(create);
  static PixelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rgb => $_getIZ(0);
  @$pb.TagNumber(1)
  set rgb($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRgb() => $_has(0);
  @$pb.TagNumber(1)
  void clearRgb() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get brightness => $_getIZ(1);
  @$pb.TagNumber(2)
  set brightness($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrightness() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrightness() => clearField(2);
}

class GetUgkStripsReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUgkStripsReq', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nop', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetUgkStripsReq._() : super();
  factory GetUgkStripsReq({
    $core.int? nop,
  }) {
    final _result = create();
    if (nop != null) {
      _result.nop = nop;
    }
    return _result;
  }
  factory GetUgkStripsReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUgkStripsReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUgkStripsReq clone() => GetUgkStripsReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUgkStripsReq copyWith(void Function(GetUgkStripsReq) updates) => super.copyWith((message) => updates(message as GetUgkStripsReq)) as GetUgkStripsReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUgkStripsReq create() => GetUgkStripsReq._();
  GetUgkStripsReq createEmptyInstance() => create();
  static $pb.PbList<GetUgkStripsReq> createRepeated() => $pb.PbList<GetUgkStripsReq>();
  @$core.pragma('dart2js:noInline')
  static GetUgkStripsReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUgkStripsReq>(create);
  static GetUgkStripsReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nop => $_getIZ(0);
  @$pb.TagNumber(1)
  set nop($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNop() => $_has(0);
  @$pb.TagNumber(1)
  void clearNop() => clearField(1);
}

class GetUgkStripsResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUgkStripsResp', createEmptyInstance: create)
    ..pc<PixelInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'driverSideStrip', $pb.PbFieldType.PM, subBuilder: PixelInfo.create)
    ..pc<PixelInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'passengerSideStrip', $pb.PbFieldType.PM, subBuilder: PixelInfo.create)
    ..pc<PixelInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'frontSideStrip', $pb.PbFieldType.PM, subBuilder: PixelInfo.create)
    ..hasRequiredFields = false
  ;

  GetUgkStripsResp._() : super();
  factory GetUgkStripsResp({
    $core.Iterable<PixelInfo>? driverSideStrip,
    $core.Iterable<PixelInfo>? passengerSideStrip,
    $core.Iterable<PixelInfo>? frontSideStrip,
  }) {
    final _result = create();
    if (driverSideStrip != null) {
      _result.driverSideStrip.addAll(driverSideStrip);
    }
    if (passengerSideStrip != null) {
      _result.passengerSideStrip.addAll(passengerSideStrip);
    }
    if (frontSideStrip != null) {
      _result.frontSideStrip.addAll(frontSideStrip);
    }
    return _result;
  }
  factory GetUgkStripsResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUgkStripsResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUgkStripsResp clone() => GetUgkStripsResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUgkStripsResp copyWith(void Function(GetUgkStripsResp) updates) => super.copyWith((message) => updates(message as GetUgkStripsResp)) as GetUgkStripsResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUgkStripsResp create() => GetUgkStripsResp._();
  GetUgkStripsResp createEmptyInstance() => create();
  static $pb.PbList<GetUgkStripsResp> createRepeated() => $pb.PbList<GetUgkStripsResp>();
  @$core.pragma('dart2js:noInline')
  static GetUgkStripsResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUgkStripsResp>(create);
  static GetUgkStripsResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PixelInfo> get driverSideStrip => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<PixelInfo> get passengerSideStrip => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<PixelInfo> get frontSideStrip => $_getList(2);
}

class SetUgkColorReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetUgkColorReq', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rgb', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brightness', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SetUgkColorReq._() : super();
  factory SetUgkColorReq({
    $core.int? rgb,
    $core.int? brightness,
  }) {
    final _result = create();
    if (rgb != null) {
      _result.rgb = rgb;
    }
    if (brightness != null) {
      _result.brightness = brightness;
    }
    return _result;
  }
  factory SetUgkColorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUgkColorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUgkColorReq clone() => SetUgkColorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUgkColorReq copyWith(void Function(SetUgkColorReq) updates) => super.copyWith((message) => updates(message as SetUgkColorReq)) as SetUgkColorReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetUgkColorReq create() => SetUgkColorReq._();
  SetUgkColorReq createEmptyInstance() => create();
  static $pb.PbList<SetUgkColorReq> createRepeated() => $pb.PbList<SetUgkColorReq>();
  @$core.pragma('dart2js:noInline')
  static SetUgkColorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUgkColorReq>(create);
  static SetUgkColorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rgb => $_getIZ(0);
  @$pb.TagNumber(1)
  set rgb($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRgb() => $_has(0);
  @$pb.TagNumber(1)
  void clearRgb() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get brightness => $_getIZ(1);
  @$pb.TagNumber(2)
  set brightness($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrightness() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrightness() => clearField(2);
}

class SetUgkColorResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetUgkColorResp', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rgb', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SetUgkColorResp._() : super();
  factory SetUgkColorResp({
    $core.int? rgb,
  }) {
    final _result = create();
    if (rgb != null) {
      _result.rgb = rgb;
    }
    return _result;
  }
  factory SetUgkColorResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUgkColorResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUgkColorResp clone() => SetUgkColorResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUgkColorResp copyWith(void Function(SetUgkColorResp) updates) => super.copyWith((message) => updates(message as SetUgkColorResp)) as SetUgkColorResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetUgkColorResp create() => SetUgkColorResp._();
  SetUgkColorResp createEmptyInstance() => create();
  static $pb.PbList<SetUgkColorResp> createRepeated() => $pb.PbList<SetUgkColorResp>();
  @$core.pragma('dart2js:noInline')
  static SetUgkColorResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUgkColorResp>(create);
  static SetUgkColorResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rgb => $_getIZ(0);
  @$pb.TagNumber(1)
  set rgb($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRgb() => $_has(0);
  @$pb.TagNumber(1)
  void clearRgb() => clearField(1);
}

class SetRgbCorrectorReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetRgbCorrectorReq', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rgbcorrector', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SetRgbCorrectorReq._() : super();
  factory SetRgbCorrectorReq({
    $core.int? rgbcorrector,
  }) {
    final _result = create();
    if (rgbcorrector != null) {
      _result.rgbcorrector = rgbcorrector;
    }
    return _result;
  }
  factory SetRgbCorrectorReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRgbCorrectorReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRgbCorrectorReq clone() => SetRgbCorrectorReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRgbCorrectorReq copyWith(void Function(SetRgbCorrectorReq) updates) => super.copyWith((message) => updates(message as SetRgbCorrectorReq)) as SetRgbCorrectorReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetRgbCorrectorReq create() => SetRgbCorrectorReq._();
  SetRgbCorrectorReq createEmptyInstance() => create();
  static $pb.PbList<SetRgbCorrectorReq> createRepeated() => $pb.PbList<SetRgbCorrectorReq>();
  @$core.pragma('dart2js:noInline')
  static SetRgbCorrectorReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRgbCorrectorReq>(create);
  static SetRgbCorrectorReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get rgbcorrector => $_getIZ(0);
  @$pb.TagNumber(1)
  set rgbcorrector($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRgbcorrector() => $_has(0);
  @$pb.TagNumber(1)
  void clearRgbcorrector() => clearField(1);
}

class SetRgbCorrectorResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetRgbCorrectorResp', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nop', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SetRgbCorrectorResp._() : super();
  factory SetRgbCorrectorResp({
    $core.int? nop,
  }) {
    final _result = create();
    if (nop != null) {
      _result.nop = nop;
    }
    return _result;
  }
  factory SetRgbCorrectorResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetRgbCorrectorResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetRgbCorrectorResp clone() => SetRgbCorrectorResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetRgbCorrectorResp copyWith(void Function(SetRgbCorrectorResp) updates) => super.copyWith((message) => updates(message as SetRgbCorrectorResp)) as SetRgbCorrectorResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetRgbCorrectorResp create() => SetRgbCorrectorResp._();
  SetRgbCorrectorResp createEmptyInstance() => create();
  static $pb.PbList<SetRgbCorrectorResp> createRepeated() => $pb.PbList<SetRgbCorrectorResp>();
  @$core.pragma('dart2js:noInline')
  static SetRgbCorrectorResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetRgbCorrectorResp>(create);
  static SetRgbCorrectorResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get nop => $_getIZ(0);
  @$pb.TagNumber(1)
  set nop($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNop() => $_has(0);
  @$pb.TagNumber(1)
  void clearNop() => clearField(1);
}

enum UgkPayload_Payload {
  setUgkFxReq, 
  setUgkFxResp, 
  getUgkStripsReq, 
  getUgkStripsResp, 
  setUgkColorReq, 
  setUgkColorResp, 
  setRgbCorretorReq, 
  setRgbCorretorResp, 
  notSet
}

class UgkPayload extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UgkPayload_Payload> _UgkPayload_PayloadByTag = {
    1 : UgkPayload_Payload.setUgkFxReq,
    2 : UgkPayload_Payload.setUgkFxResp,
    3 : UgkPayload_Payload.getUgkStripsReq,
    4 : UgkPayload_Payload.getUgkStripsResp,
    5 : UgkPayload_Payload.setUgkColorReq,
    6 : UgkPayload_Payload.setUgkColorResp,
    7 : UgkPayload_Payload.setRgbCorretorReq,
    8 : UgkPayload_Payload.setRgbCorretorResp,
    0 : UgkPayload_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UgkPayload', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<SetUgkFxReq>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setUgkFxReq', subBuilder: SetUgkFxReq.create)
    ..aOM<SetUgkFxResp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setUgkFxResp', subBuilder: SetUgkFxResp.create)
    ..aOM<GetUgkStripsReq>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getUgkStripsReq', subBuilder: GetUgkStripsReq.create)
    ..aOM<GetUgkStripsResp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getUgkStripsResp', subBuilder: GetUgkStripsResp.create)
    ..aOM<SetUgkColorReq>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setUgkColorReq', subBuilder: SetUgkColorReq.create)
    ..aOM<SetUgkColorResp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setUgkColorResp', subBuilder: SetUgkColorResp.create)
    ..aOM<SetRgbCorrectorReq>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setRgbCorretorReq', subBuilder: SetRgbCorrectorReq.create)
    ..aOM<SetRgbCorrectorResp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setRgbCorretorResp', subBuilder: SetRgbCorrectorResp.create)
    ..hasRequiredFields = false
  ;

  UgkPayload._() : super();
  factory UgkPayload({
    SetUgkFxReq? setUgkFxReq,
    SetUgkFxResp? setUgkFxResp,
    GetUgkStripsReq? getUgkStripsReq,
    GetUgkStripsResp? getUgkStripsResp,
    SetUgkColorReq? setUgkColorReq,
    SetUgkColorResp? setUgkColorResp,
    SetRgbCorrectorReq? setRgbCorretorReq,
    SetRgbCorrectorResp? setRgbCorretorResp,
  }) {
    final _result = create();
    if (setUgkFxReq != null) {
      _result.setUgkFxReq = setUgkFxReq;
    }
    if (setUgkFxResp != null) {
      _result.setUgkFxResp = setUgkFxResp;
    }
    if (getUgkStripsReq != null) {
      _result.getUgkStripsReq = getUgkStripsReq;
    }
    if (getUgkStripsResp != null) {
      _result.getUgkStripsResp = getUgkStripsResp;
    }
    if (setUgkColorReq != null) {
      _result.setUgkColorReq = setUgkColorReq;
    }
    if (setUgkColorResp != null) {
      _result.setUgkColorResp = setUgkColorResp;
    }
    if (setRgbCorretorReq != null) {
      _result.setRgbCorretorReq = setRgbCorretorReq;
    }
    if (setRgbCorretorResp != null) {
      _result.setRgbCorretorResp = setRgbCorretorResp;
    }
    return _result;
  }
  factory UgkPayload.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UgkPayload.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UgkPayload clone() => UgkPayload()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UgkPayload copyWith(void Function(UgkPayload) updates) => super.copyWith((message) => updates(message as UgkPayload)) as UgkPayload; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UgkPayload create() => UgkPayload._();
  UgkPayload createEmptyInstance() => create();
  static $pb.PbList<UgkPayload> createRepeated() => $pb.PbList<UgkPayload>();
  @$core.pragma('dart2js:noInline')
  static UgkPayload getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UgkPayload>(create);
  static UgkPayload? _defaultInstance;

  UgkPayload_Payload whichPayload() => _UgkPayload_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SetUgkFxReq get setUgkFxReq => $_getN(0);
  @$pb.TagNumber(1)
  set setUgkFxReq(SetUgkFxReq v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSetUgkFxReq() => $_has(0);
  @$pb.TagNumber(1)
  void clearSetUgkFxReq() => clearField(1);
  @$pb.TagNumber(1)
  SetUgkFxReq ensureSetUgkFxReq() => $_ensure(0);

  @$pb.TagNumber(2)
  SetUgkFxResp get setUgkFxResp => $_getN(1);
  @$pb.TagNumber(2)
  set setUgkFxResp(SetUgkFxResp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetUgkFxResp() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetUgkFxResp() => clearField(2);
  @$pb.TagNumber(2)
  SetUgkFxResp ensureSetUgkFxResp() => $_ensure(1);

  @$pb.TagNumber(3)
  GetUgkStripsReq get getUgkStripsReq => $_getN(2);
  @$pb.TagNumber(3)
  set getUgkStripsReq(GetUgkStripsReq v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGetUgkStripsReq() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetUgkStripsReq() => clearField(3);
  @$pb.TagNumber(3)
  GetUgkStripsReq ensureGetUgkStripsReq() => $_ensure(2);

  @$pb.TagNumber(4)
  GetUgkStripsResp get getUgkStripsResp => $_getN(3);
  @$pb.TagNumber(4)
  set getUgkStripsResp(GetUgkStripsResp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetUgkStripsResp() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetUgkStripsResp() => clearField(4);
  @$pb.TagNumber(4)
  GetUgkStripsResp ensureGetUgkStripsResp() => $_ensure(3);

  @$pb.TagNumber(5)
  SetUgkColorReq get setUgkColorReq => $_getN(4);
  @$pb.TagNumber(5)
  set setUgkColorReq(SetUgkColorReq v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetUgkColorReq() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetUgkColorReq() => clearField(5);
  @$pb.TagNumber(5)
  SetUgkColorReq ensureSetUgkColorReq() => $_ensure(4);

  @$pb.TagNumber(6)
  SetUgkColorResp get setUgkColorResp => $_getN(5);
  @$pb.TagNumber(6)
  set setUgkColorResp(SetUgkColorResp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSetUgkColorResp() => $_has(5);
  @$pb.TagNumber(6)
  void clearSetUgkColorResp() => clearField(6);
  @$pb.TagNumber(6)
  SetUgkColorResp ensureSetUgkColorResp() => $_ensure(5);

  @$pb.TagNumber(7)
  SetRgbCorrectorReq get setRgbCorretorReq => $_getN(6);
  @$pb.TagNumber(7)
  set setRgbCorretorReq(SetRgbCorrectorReq v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSetRgbCorretorReq() => $_has(6);
  @$pb.TagNumber(7)
  void clearSetRgbCorretorReq() => clearField(7);
  @$pb.TagNumber(7)
  SetRgbCorrectorReq ensureSetRgbCorretorReq() => $_ensure(6);

  @$pb.TagNumber(8)
  SetRgbCorrectorResp get setRgbCorretorResp => $_getN(7);
  @$pb.TagNumber(8)
  set setRgbCorretorResp(SetRgbCorrectorResp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetRgbCorretorResp() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetRgbCorretorResp() => clearField(8);
  @$pb.TagNumber(8)
  SetRgbCorrectorResp ensureSetRgbCorretorResp() => $_ensure(7);
}

