import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/generated/rpc_schema.pbgrpc.dart';
import 'package:flutter_app/loader.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SystemInfoScreen extends HookWidget {
  const SystemInfoScreen({super.key});

  get http => null;

  @override
  Widget build(BuildContext context) {
    final systemInfo = useState<SystemInformation?>(null);

    useMemoized(() async {
      systemInfo.value = await API.getSystemInfo();
    });

    if (systemInfo.value == null) {
      return const Loader();
    }

    return Scaffold(
      appBar: AppBar(title: const NervesLogo(height: 32), elevation: 1),
      body: ListView(children: buildWidgetList(systemInfo.value!)),
    );
  }

  buildWidgetList(SystemInformation systemInfo) {
    const padding = EdgeInsets.all(3.0);
    return [
      Padding(
          padding: padding,
          child: ListTile(
              title: const Text("Hostname"),
              subtitle: Text(systemInfo.hostname))),
      Padding(
          padding: padding,
          child: ListTile(
              title: const Text("Serial Number"),
              subtitle: Text(systemInfo.serialNumber))),
      Padding(
          padding: padding,
          child: ListTile(
              title: const Text("Firmware Product"),
              subtitle: Text(systemInfo.fwProduct)))
    ];
  }
}
