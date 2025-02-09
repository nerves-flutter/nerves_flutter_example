import 'dart:io';

import 'package:flutter_app/generated/rpc_schema.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class API {
  static String _baseHostname = "127.0.0.1";
  static ClientChannel? _channel;
  static RPCClient? _client;
  static final Empty _empty = Empty.create();

  static updateBaseURI() {
    final env = Platform.environment;
    if (env.keys.contains("BASE_RPC_HOSTNAME")) {
      _baseHostname = env["BASE_RPC_HOSTNAME"]!;
    }

    // Create the gRPC channel and stub
    _channel = ClientChannel(_baseHostname,
        port: 50051,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));

    _client = RPCClient(_channel!,
        options: CallOptions(timeout: const Duration(seconds: 30)));
  }

  static Future<SystemInformation> getSystemInfo() async {
    return await _client!.getSystemInfo(_empty);
  }

  static Future<WiFiScanResult> getWiFiNetworks() async {
    return await _client!.wifiScan(_empty);
  }

  static Future<Empty> rebootSystem() async {
    return await _client!.rebootSystem(_empty);
  }

  static Future<Empty> haltSystem() async {
    return await _client!.haltSystem(_empty);
  }
}
