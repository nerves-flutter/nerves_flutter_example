import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

class UISocket {
  late WebSocketChannel channel;

  UISocket() {
    channel = WebSocketChannel.connect(
      Uri.parse('ws://localhost:4000/websocket'),
    );
  }

  void send(Map message) {
    channel.sink.add(json.encode(message));
  }
}
