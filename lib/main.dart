import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(FlutterWidget());
}

class FlutterWidget extends StatefulWidget {
  @override
  _FlutterWidgetState createState() => _FlutterWidgetState();
}

class _FlutterWidgetState extends State<FlutterWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
