import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/loader.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SystemInfoScreen extends HookWidget {
  const SystemInfoScreen({super.key});

  get http => null;

  @override
  Widget build(BuildContext context) {
    final systemInfo = useState<Map?>(null);

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

  buildWidgetList(Map systemInfo) {
    List<Widget> items = [];

    systemInfo.forEach((key, value) {
      items.add(Padding(
          padding: const EdgeInsets.all(3.0),
          child: ListTile(title: Text(key), subtitle: Text(value.toString()))));
    });

    return items;
  }
}
