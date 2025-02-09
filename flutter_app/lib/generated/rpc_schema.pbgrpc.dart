//
//  Generated code. Do not modify.
//  source: rpc_schema.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'rpc_schema.pb.dart' as $0;

export 'rpc_schema.pb.dart';

@$pb.GrpcServiceName('NervesFlutterExample.RPC')
class RPCClient extends $grpc.Client {
  static final _$getSystemInfo = $grpc.ClientMethod<$0.Empty, $0.SystemInformation>(
      '/NervesFlutterExample.RPC/GetSystemInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SystemInformation.fromBuffer(value));
  static final _$wifiScan = $grpc.ClientMethod<$0.Empty, $0.WiFiScanResult>(
      '/NervesFlutterExample.RPC/WifiScan',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WiFiScanResult.fromBuffer(value));
  static final _$streamLogs = $grpc.ClientMethod<$0.Empty, $0.LogEntry>(
      '/NervesFlutterExample.RPC/StreamLogs',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LogEntry.fromBuffer(value));
  static final _$rebootSystem = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/NervesFlutterExample.RPC/RebootSystem',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$haltSystem = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/NervesFlutterExample.RPC/HaltSystem',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  RPCClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SystemInformation> getSystemInfo($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSystemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.WiFiScanResult> wifiScan($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$wifiScan, request, options: options);
  }

  $grpc.ResponseStream<$0.LogEntry> streamLogs($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamLogs, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> rebootSystem($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rebootSystem, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> haltSystem($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$haltSystem, request, options: options);
  }
}

@$pb.GrpcServiceName('NervesFlutterExample.RPC')
abstract class RPCServiceBase extends $grpc.Service {
  $core.String get $name => 'NervesFlutterExample.RPC';

  RPCServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.SystemInformation>(
        'GetSystemInfo',
        getSystemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.SystemInformation value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.WiFiScanResult>(
        'WifiScan',
        wifiScan_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.WiFiScanResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.LogEntry>(
        'StreamLogs',
        streamLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.LogEntry value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'RebootSystem',
        rebootSystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'HaltSystem',
        haltSystem_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.SystemInformation> getSystemInfo_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getSystemInfo(call, await request);
  }

  $async.Future<$0.WiFiScanResult> wifiScan_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return wifiScan(call, await request);
  }

  $async.Stream<$0.LogEntry> streamLogs_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* streamLogs(call, await request);
  }

  $async.Future<$0.Empty> rebootSystem_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return rebootSystem(call, await request);
  }

  $async.Future<$0.Empty> haltSystem_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return haltSystem(call, await request);
  }

  $async.Future<$0.SystemInformation> getSystemInfo($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.WiFiScanResult> wifiScan($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.LogEntry> streamLogs($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> rebootSystem($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> haltSystem($grpc.ServiceCall call, $0.Empty request);
}
