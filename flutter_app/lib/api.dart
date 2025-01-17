import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class API {
  static String _baseUri = "http://localhost:4000";

  static updateBaseURI() {
    final env = Platform.environment;
    if (env.keys.contains("BASE_API_URI")) {
      _baseUri = env["BASE_API_URI"]!;
    }
  }

  static Future<Map> getSystemInfo() async {
    final resp = await http.get(Uri.parse("$_baseUri/api/system_info"));
    return json.decode(resp.body) as Map;
  }

  static Future<Map> getWiFiNetworks() async {
    final resp = await http.get(Uri.parse("$_baseUri/api/wifi_scan"));
    return json.decode(resp.body) as Map;
  }

  static Future<Map> setupWiFi(String networkSSID, String psk) async {
    final resp = await http.post(Uri.parse("$_baseUri/api/wifi_setup"),
        body: {"ssid": networkSSID, "psk": psk});
    return json.decode(resp.body) as Map;
  }
}
