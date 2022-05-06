
import 'package:candle/views/home.dart';
import 'package:flutter/material.dart';


void main() => runApp(
  // DevicePreview(
  //   // enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  MyApp(),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
