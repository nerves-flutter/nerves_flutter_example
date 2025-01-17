import 'package:flutter/material.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const demos = [
  {"name": "Device Info", "route": "/info", "icon": Icons.device_hub_rounded},
  {"name": "WiFi Scan", "route": "/wifi", "icon": Icons.wifi_find}
];

class ListScreen extends HookWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const NervesLogo(height: 32), elevation: 1),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        shrinkWrap: true,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 4,
        childAspectRatio: (1 / .5),
        children: buildListItems(context),
      ),
    );
  }

  List<Widget> buildListItems(BuildContext context) {
    final List<Widget> list = [];
    final theme = Theme.of(context);
    for (final item in demos) {
      list.add(Card(
          child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(item["route"] as String);
        },
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(item["icon"] as IconData, size: 64),
              Text(item["name"] as String, style: theme.textTheme.titleLarge),
            ]),
      )));
    }

    return list;
  }
}
