
import 'package:candle/views/home.dart';
import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    // enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return const MaterialApp(
      home: Home(),
    );
  }
}
