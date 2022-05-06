import 'package:candle/views/club.dart';
import 'package:candle/views/home.dart';
import 'package:flutter/material.dart';


void main() => runApp(
  // DevicePreview(
  //   // enabled: !kReleaseMode,
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  const MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Home(),
    );
  }
}
