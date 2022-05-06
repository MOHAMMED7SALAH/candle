import 'package:candle/views/bus_timming.dart';
import 'package:flutter/material.dart';

class BusPage extends StatelessWidget {
  final Buses bus;
  const BusPage({Key? key, required this.bus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(bus.busName),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(bus.busImage))),
          )
        ],
      ),
    );
  }
}
