import 'dart:collection';

import 'package:circular_buffer/circular_buffer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/api.dart';
import 'package:flutter_app/generated/rpc_schema.pbgrpc.dart';
import 'package:flutter_app/nerves_logo.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LogScreen extends HookWidget {
  const LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final logStream = useStream(API.getLogStream());
    final logBuffer = useState(CircularBuffer<LogEntry>(8));

    if (logStream.data != null) {
      logBuffer.value.add(logStream.requireData);
    }

    return Scaffold(
        appBar: AppBar(title: const NervesLogo(height: 32), elevation: 1),
        body: ListView(children: buildLogChildren(logBuffer.value)));
  }

  List<Widget> buildLogChildren(CircularBuffer<LogEntry> messages) {
    return messages.map((element) {
      return ListTile(
          leading: levelToIcon(element.level),
          subtitle: Text(element.module,
              maxLines: 1, overflow: TextOverflow.ellipsis),
          title: Text(element.message,
              maxLines: 1, overflow: TextOverflow.ellipsis));
    }).toList();
  }

  Icon levelToIcon(String level) {
    switch (level) {
      case "warning":
        return const Icon(Icons.warning);
      default:
        return const Icon(Icons.info);
    }
  }
}
