import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

const demos = [
  {"name": "Device Info", "route": "/info", "icon": Icons.device_hub_rounded},
  {"name": "WiFi Scan", "route": "/wifi", "icon": Icons.wifi_find},
  {"name": "Logs", "route": "/logs", "icon": Icons.receipt_long_rounded},
];

class AnimationScreen extends HookWidget {
  const AnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loaders = [
      LoadingAnimationWidget.staggeredDotsWave(
        color: Colors.blueAccent,
        size: 75,
      ),
      LoadingAnimationWidget.threeRotatingDots(
          color: Colors.blueAccent, size: 75),
      LoadingAnimationWidget.dotsTriangle(color: Colors.blueAccent, size: 75),
      LoadingAnimationWidget.waveDots(color: Colors.blueAccent, size: 75),
      LoadingAnimationWidget.hexagonDots(color: Colors.blueAccent, size: 75),
      LoadingAnimationWidget.progressiveDots(
          color: Colors.blueAccent, size: 75),
      LoadingAnimationWidget.beat(color: Colors.blueAccent, size: 75),
      LoadingAnimationWidget.halfTriangleDot(color: Colors.blueAccent, size: 75)
    ];

    final List<Widget> tiles = [];

    for (final loader in loaders) {
      tiles.add(Card(
          child: InkWell(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [loader]),
      )));
    }

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
        children: tiles,
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

  void showRebootConfirm(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Reboot Device?'),
          content: const Text("Are you sure you want to reboot the device?"),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Yes, Reboot'),
              onPressed: () {
                API.rebootSystem();
              },
            ),
          ],
        );
      },
    );
  }
}
