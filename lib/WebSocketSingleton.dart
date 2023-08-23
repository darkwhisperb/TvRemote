import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;


class WebSocketSingleton {
  static WebSocketSingleton? _instance; // '?' ekleyerek nullable yapın
  late IOWebSocketChannel _webSocketChannel; // 'late' ekleyerek ileri bir atama yapın
  Function(dynamic)? _eventListener; // '?' ekleyerek nullable yapın
  bool isConnected = false;
  bool pendingPong = false;

  WebSocketSingleton._internal();

  factory WebSocketSingleton.getInstance() {
    _instance ??= WebSocketSingleton._internal(); // Null kontrolü yapın
    return _instance!;
  }

  void setEventListener(Function(dynamic)? listener) {
    _eventListener = listener;
  }

  void sendMessage(String message) {
    if (_webSocketChannel.sink != null && isConnected) {
      _webSocketChannel.sink.add(message);
    }
  }

  void sendPing() {
    pendingPong = true;
    _webSocketChannel.sink.add("CheckConnection");
  }

  void closeConnection() {
    _webSocketChannel.sink.close(status.goingAway);
    isConnected = false;
  }

  bool connectToWebSocket(String serverUrl) {
    isConnected = false;

    try {
      _webSocketChannel = IOWebSocketChannel.connect(serverUrl);
      _webSocketChannel.stream.listen((dynamic message) {
        // Handle different types of messages received
        if (_eventListener != null) {
          _eventListener!(message);
        }
      }, onError: (dynamic error) {
        // Handle errors
        print("WebSocket error: $error");
      }, onDone: () {
        isConnected = false;
        if (_eventListener != null) {
          _eventListener!(null); // Inform listener that connection is closed
        }
      });

      isConnected = true;
    } catch (e) {
      print("WebSocket connection error: $e");
    }

    return isConnected;
  }
}