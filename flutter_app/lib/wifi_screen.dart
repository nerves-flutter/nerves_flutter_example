import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/generated/rpc_schema.pbgrpc.dart';
import 'package:flutter_app/loader.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WiFiScreen extends HookWidget {
  const WiFiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final wifiNetworks = useState<WiFiScanResult?>(null);

    useMemoized(() async {
      wifiNetworks.value = await API.getWiFiNetworks();
    });

    if (wifiNetworks.value == null) {
      return const Loader(text: "Scanning WiFi Networks...");
    }

    if (wifiNetworks.value?.networks.isEmpty == null) {
      return const Center(child: Text("No WiFi Networks Found!"));
    }

    return Scaffold(
        appBar: AppBar(title: const NervesLogo(height: 32), elevation: 1),
        body:
            ListView(children: buildWidgetList(wifiNetworks.value!.networks)));
  }

  buildWidgetList(List<WiFiNetworkInfo> wifiNetworks) {
    List<Widget> networks = [];

    for (var network in wifiNetworks) {
      networks.add(Padding(
          padding: const EdgeInsets.all(3.0),
          child: ListTile(
              onTap: () => {},
              leading: signalPercentToIcon(network.signalPercent),
              title: Text(network.ssid),
              subtitle: Text(buildInfoString(network)))));
    }

    return networks;
  }

  String buildInfoString(WiFiNetworkInfo network) {
    return "Type: ${networkType(network.frequency)} • ${network.flags.join(" ")}";
  }

  String networkType(int frequency) {
    if (frequency >= 5000) {
      return "5Ghz";
    }

    return "2Ghz";
  }

  Icon signalPercentToIcon(int percentage) {
    if (percentage >= 80) {
      return const Icon(Icons.network_wifi_rounded);
    }

    if (percentage >= 50) {
      return const Icon(Icons.network_wifi_3_bar_rounded);
    }

    if (percentage >= 30) {
      return const Icon(Icons.network_wifi_2_bar_rounded);
    }

    return const Icon(Icons.network_wifi_1_bar_rounded);
  }
}
