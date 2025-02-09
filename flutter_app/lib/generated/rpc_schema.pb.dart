//
//  Generated code. Do not modify.
//  source: rpc_schema.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'NervesFlutterExample'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

/// Log struct
class LogEntry extends $pb.GeneratedMessage {
  factory LogEntry({
    $core.String? message,
    $fixnum.Int64? timestamp,
    $core.String? level,
    $core.String? module,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (level != null) {
      $result.level = level;
    }
    if (module != null) {
      $result.module = module;
    }
    return $result;
  }
  LogEntry._() : super();
  factory LogEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LogEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'NervesFlutterExample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aInt64(2, _omitFieldNames ? '' : 'timestamp')
    ..aOS(3, _omitFieldNames ? '' : 'level')
    ..aOS(4, _omitFieldNames ? '' : 'module')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogEntry clone() => LogEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogEntry copyWith(void Function(LogEntry) updates) => super.copyWith((message) => updates(message as LogEntry)) as LogEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LogEntry create() => LogEntry._();
  LogEntry createEmptyInstance() => create();
  static $pb.PbList<LogEntry> createRepeated() => $pb.PbList<LogEntry>();
  @$core.pragma('dart2js:noInline')
  static LogEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogEntry>(create);
  static LogEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestamp => $_getI64(1);
  @$pb.TagNumber(2)
  set timestamp($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get level => $_getSZ(2);
  @$pb.TagNumber(3)
  set level($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get module => $_getSZ(3);
  @$pb.TagNumber(4)
  set module($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasModule() => $_has(3);
  @$pb.TagNumber(4)
  void clearModule() => clearField(4);
}

/// Network Info Structures
class WiFiNetworkInfo extends $pb.GeneratedMessage {
  factory WiFiNetworkInfo({
    $core.String? ssid,
    $core.String? bssid,
    $core.int? channel,
    $core.int? frequency,
    $core.int? signalDbm,
    $core.int? signalPercent,
    $core.Iterable<$core.String>? flags,
  }) {
    final $result = create();
    if (ssid != null) {
      $result.ssid = ssid;
    }
    if (bssid != null) {
      $result.bssid = bssid;
    }
    if (channel != null) {
      $result.channel = channel;
    }
    if (frequency != null) {
      $result.frequency = frequency;
    }
    if (signalDbm != null) {
      $result.signalDbm = signalDbm;
    }
    if (signalPercent != null) {
      $result.signalPercent = signalPercent;
    }
    if (flags != null) {
      $result.flags.addAll(flags);
    }
    return $result;
  }
  WiFiNetworkInfo._() : super();
  factory WiFiNetworkInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WiFiNetworkInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WiFiNetworkInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'NervesFlutterExample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ssid')
    ..aOS(2, _omitFieldNames ? '' : 'bssid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'channel', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'signalDbm', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'signalPercent', $pb.PbFieldType.O3)
    ..pPS(7, _omitFieldNames ? '' : 'flags')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WiFiNetworkInfo clone() => WiFiNetworkInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WiFiNetworkInfo copyWith(void Function(WiFiNetworkInfo) updates) => super.copyWith((message) => updates(message as WiFiNetworkInfo)) as WiFiNetworkInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiNetworkInfo create() => WiFiNetworkInfo._();
  WiFiNetworkInfo createEmptyInstance() => create();
  static $pb.PbList<WiFiNetworkInfo> createRepeated() => $pb.PbList<WiFiNetworkInfo>();
  @$core.pragma('dart2js:noInline')
  static WiFiNetworkInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WiFiNetworkInfo>(create);
  static WiFiNetworkInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ssid => $_getSZ(0);
  @$pb.TagNumber(1)
  set ssid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSsid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSsid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bssid => $_getSZ(1);
  @$pb.TagNumber(2)
  set bssid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBssid() => $_has(1);
  @$pb.TagNumber(2)
  void clearBssid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get channel => $_getIZ(2);
  @$pb.TagNumber(3)
  set channel($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get frequency => $_getIZ(3);
  @$pb.TagNumber(4)
  set frequency($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFrequency() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrequency() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get signalDbm => $_getIZ(4);
  @$pb.TagNumber(5)
  set signalDbm($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSignalDbm() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignalDbm() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get signalPercent => $_getIZ(5);
  @$pb.TagNumber(6)
  set signalPercent($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSignalPercent() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignalPercent() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get flags => $_getList(6);
}

class WiFiScanResult extends $pb.GeneratedMessage {
  factory WiFiScanResult({
    $core.Iterable<WiFiNetworkInfo>? networks,
  }) {
    final $result = create();
    if (networks != null) {
      $result.networks.addAll(networks);
    }
    return $result;
  }
  WiFiScanResult._() : super();
  factory WiFiScanResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WiFiScanResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WiFiScanResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'NervesFlutterExample'), createEmptyInstance: create)
    ..pc<WiFiNetworkInfo>(1, _omitFieldNames ? '' : 'networks', $pb.PbFieldType.PM, subBuilder: WiFiNetworkInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WiFiScanResult clone() => WiFiScanResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WiFiScanResult copyWith(void Function(WiFiScanResult) updates) => super.copyWith((message) => updates(message as WiFiScanResult)) as WiFiScanResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WiFiScanResult create() => WiFiScanResult._();
  WiFiScanResult createEmptyInstance() => create();
  static $pb.PbList<WiFiScanResult> createRepeated() => $pb.PbList<WiFiScanResult>();
  @$core.pragma('dart2js:noInline')
  static WiFiScanResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WiFiScanResult>(create);
  static WiFiScanResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WiFiNetworkInfo> get networks => $_getList(0);
}

/// System Information Structures
class SystemInformation extends $pb.GeneratedMessage {
  factory SystemInformation({
    $core.String? hostname,
    $core.String? serialNumber,
    $core.String? mixTarget,
    $core.bool? fwValid,
    $core.String? fwPlatform,
    $core.String? fwArchitecture,
    $core.String? fwProduct,
    $core.String? fwVersion,
    $core.String? fwUuid,
  }) {
    final $result = create();
    if (hostname != null) {
      $result.hostname = hostname;
    }
    if (serialNumber != null) {
      $result.serialNumber = serialNumber;
    }
    if (mixTarget != null) {
      $result.mixTarget = mixTarget;
    }
    if (fwValid != null) {
      $result.fwValid = fwValid;
    }
    if (fwPlatform != null) {
      $result.fwPlatform = fwPlatform;
    }
    if (fwArchitecture != null) {
      $result.fwArchitecture = fwArchitecture;
    }
    if (fwProduct != null) {
      $result.fwProduct = fwProduct;
    }
    if (fwVersion != null) {
      $result.fwVersion = fwVersion;
    }
    if (fwUuid != null) {
      $result.fwUuid = fwUuid;
    }
    return $result;
  }
  SystemInformation._() : super();
  factory SystemInformation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemInformation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemInformation', package: const $pb.PackageName(_omitMessageNames ? '' : 'NervesFlutterExample'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hostname')
    ..aOS(2, _omitFieldNames ? '' : 'serialNumber')
    ..aOS(3, _omitFieldNames ? '' : 'mixTarget')
    ..aOB(4, _omitFieldNames ? '' : 'fwValid')
    ..aOS(5, _omitFieldNames ? '' : 'fwPlatform')
    ..aOS(6, _omitFieldNames ? '' : 'fwArchitecture')
    ..aOS(7, _omitFieldNames ? '' : 'fwProduct')
    ..aOS(8, _omitFieldNames ? '' : 'fwVersion')
    ..aOS(9, _omitFieldNames ? '' : 'fwUuid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SystemInformation clone() => SystemInformation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SystemInformation copyWith(void Function(SystemInformation) updates) => super.copyWith((message) => updates(message as SystemInformation)) as SystemInformation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemInformation create() => SystemInformation._();
  SystemInformation createEmptyInstance() => create();
  static $pb.PbList<SystemInformation> createRepeated() => $pb.PbList<SystemInformation>();
  @$core.pragma('dart2js:noInline')
  static SystemInformation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemInformation>(create);
  static SystemInformation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hostname => $_getSZ(0);
  @$pb.TagNumber(1)
  set hostname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHostname() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serialNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set serialNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSerialNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearSerialNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mixTarget => $_getSZ(2);
  @$pb.TagNumber(3)
  set mixTarget($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMixTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearMixTarget() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get fwValid => $_getBF(3);
  @$pb.TagNumber(4)
  set fwValid($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFwValid() => $_has(3);
  @$pb.TagNumber(4)
  void clearFwValid() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get fwPlatform => $_getSZ(4);
  @$pb.TagNumber(5)
  set fwPlatform($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFwPlatform() => $_has(4);
  @$pb.TagNumber(5)
  void clearFwPlatform() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get fwArchitecture => $_getSZ(5);
  @$pb.TagNumber(6)
  set fwArchitecture($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFwArchitecture() => $_has(5);
  @$pb.TagNumber(6)
  void clearFwArchitecture() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get fwProduct => $_getSZ(6);
  @$pb.TagNumber(7)
  set fwProduct($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFwProduct() => $_has(6);
  @$pb.TagNumber(7)
  void clearFwProduct() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fwVersion => $_getSZ(7);
  @$pb.TagNumber(8)
  set fwVersion($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFwVersion() => $_has(7);
  @$pb.TagNumber(8)
  void clearFwVersion() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get fwUuid => $_getSZ(8);
  @$pb.TagNumber(9)
  set fwUuid($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFwUuid() => $_has(8);
  @$pb.TagNumber(9)
  void clearFwUuid() => clearField(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
