import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/loader.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WiFiScreen extends HookWidget {
  const WiFiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wifiNetworks = useState<Map?>(null);

    useMemoized(() async {
      wifiNetworks.value = await API.getWiFiNetworks();
    });

    if (wifiNetworks.value == null) {
      return const Loader(text: "Scanning WiFi Networks...");
    }

    return Scaffold(
        appBar: AppBar(title: const NervesLogo(height: 32), elevation: 1),
        body: ListView(
            children: buildWidgetList(wifiNetworks.value?['networks'])));
  }

  buildWidgetList(List wifiNetworks) {
    List<Widget> networks = [];

    for (var network in wifiNetworks) {
      networks.add(Padding(
          padding: const EdgeInsets.all(3.0),
          child: ListTile(
              onTap: () => {},
              leading: signalPercentToIcon(network['signal_percent']),
              title: Text(network['ssid']),
              subtitle: Text(buildInfoString(network)))));
    }

    return networks;
  }

  String buildInfoString(network) {
    String flags = "";
    for (String flag in network['flags']) {
      flags += " $flag ";
    }
    return "Type: ${networkType(network['frequency'])} • $flags";
  }

  String networkType(int frequency) {
    if (frequency >= 5000) {
      return "5Ghz";
    }

    return "2Ghz";
  }

  Icon signalPercentToIcon(int percentage) {
    if (percentage >= 80) {
      return const Icon(Icons.signal_wifi_4_bar);
    }

    if (percentage >= 50) {
      return const Icon(Icons.wifi_2_bar);
    }

    if (percentage >= 30) {
      return const Icon(Icons.wifi_1_bar);
    }

    return const Icon(Icons.signal_wifi_0_bar);
  }
}
