//
//  Generated code. Do not modify.
//  source: rpc_schema.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use wiFiNetworkInfoDescriptor instead')
const WiFiNetworkInfo$json = {
  '1': 'WiFiNetworkInfo',
  '2': [
    {'1': 'ssid', '3': 1, '4': 1, '5': 9, '10': 'ssid'},
    {'1': 'bssid', '3': 2, '4': 1, '5': 9, '10': 'bssid'},
    {'1': 'channel', '3': 3, '4': 1, '5': 5, '10': 'channel'},
    {'1': 'frequency', '3': 4, '4': 1, '5': 5, '10': 'frequency'},
    {'1': 'signal_dbm', '3': 5, '4': 1, '5': 5, '10': 'signalDbm'},
    {'1': 'signal_percent', '3': 6, '4': 1, '5': 5, '10': 'signalPercent'},
    {'1': 'flags', '3': 7, '4': 3, '5': 9, '10': 'flags'},
  ],
};

/// Descriptor for `WiFiNetworkInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wiFiNetworkInfoDescriptor = $convert.base64Decode(
    'Cg9XaUZpTmV0d29ya0luZm8SEgoEc3NpZBgBIAEoCVIEc3NpZBIUCgVic3NpZBgCIAEoCVIFYn'
    'NzaWQSGAoHY2hhbm5lbBgDIAEoBVIHY2hhbm5lbBIcCglmcmVxdWVuY3kYBCABKAVSCWZyZXF1'
    'ZW5jeRIdCgpzaWduYWxfZGJtGAUgASgFUglzaWduYWxEYm0SJQoOc2lnbmFsX3BlcmNlbnQYBi'
    'ABKAVSDXNpZ25hbFBlcmNlbnQSFAoFZmxhZ3MYByADKAlSBWZsYWdz');

@$core.Deprecated('Use wiFiScanResultDescriptor instead')
const WiFiScanResult$json = {
  '1': 'WiFiScanResult',
  '2': [
    {'1': 'networks', '3': 1, '4': 3, '5': 11, '6': '.NervesFlutterExample.WiFiNetworkInfo', '10': 'networks'},
  ],
};

/// Descriptor for `WiFiScanResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wiFiScanResultDescriptor = $convert.base64Decode(
    'Cg5XaUZpU2NhblJlc3VsdBJBCghuZXR3b3JrcxgBIAMoCzIlLk5lcnZlc0ZsdXR0ZXJFeGFtcG'
    'xlLldpRmlOZXR3b3JrSW5mb1IIbmV0d29ya3M=');

@$core.Deprecated('Use systemInformationDescriptor instead')
const SystemInformation$json = {
  '1': 'SystemInformation',
  '2': [
    {'1': 'hostname', '3': 1, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'serial_number', '3': 2, '4': 1, '5': 9, '10': 'serialNumber'},
    {'1': 'mix_target', '3': 3, '4': 1, '5': 9, '10': 'mixTarget'},
    {'1': 'fw_valid', '3': 4, '4': 1, '5': 8, '10': 'fwValid'},
    {'1': 'fw_platform', '3': 5, '4': 1, '5': 9, '10': 'fwPlatform'},
    {'1': 'fw_architecture', '3': 6, '4': 1, '5': 9, '10': 'fwArchitecture'},
    {'1': 'fw_product', '3': 7, '4': 1, '5': 9, '10': 'fwProduct'},
    {'1': 'fw_version', '3': 8, '4': 1, '5': 9, '10': 'fwVersion'},
    {'1': 'fw_uuid', '3': 9, '4': 1, '5': 9, '10': 'fwUuid'},
  ],
};

/// Descriptor for `SystemInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemInformationDescriptor = $convert.base64Decode(
    'ChFTeXN0ZW1JbmZvcm1hdGlvbhIaCghob3N0bmFtZRgBIAEoCVIIaG9zdG5hbWUSIwoNc2VyaW'
    'FsX251bWJlchgCIAEoCVIMc2VyaWFsTnVtYmVyEh0KCm1peF90YXJnZXQYAyABKAlSCW1peFRh'
    'cmdldBIZCghmd192YWxpZBgEIAEoCFIHZndWYWxpZBIfCgtmd19wbGF0Zm9ybRgFIAEoCVIKZn'
    'dQbGF0Zm9ybRInCg9md19hcmNoaXRlY3R1cmUYBiABKAlSDmZ3QXJjaGl0ZWN0dXJlEh0KCmZ3'
    'X3Byb2R1Y3QYByABKAlSCWZ3UHJvZHVjdBIdCgpmd192ZXJzaW9uGAggASgJUglmd1ZlcnNpb2'
    '4SFwoHZndfdXVpZBgJIAEoCVIGZndVdWlk');

