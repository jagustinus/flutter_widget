import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Widget")
        ),
        body: Text("Hello World"),
      )
    );
  }
}