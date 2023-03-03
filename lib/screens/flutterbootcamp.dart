import 'package:flutter/material.dart';

class FlutterBootCamp extends StatelessWidget {
  const FlutterBootCamp({super.key});
  static const String id = "flutterbootcamp";
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "flutterlogo",
      child: Container(
        height: 50,
        width: 50,
        child: Image.asset("images/flutterlogo.png"),
      ),
    );
  }
}
