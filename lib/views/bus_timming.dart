import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/utils/widgets/widget/mydrawer.dart';
import 'package:candle/views/bus_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class BusTimming extends StatefulWidget {
  const BusTimming({Key? key}) : super(key: key);

  @override
  State<BusTimming> createState() => _BusTimmingState();
}

class _BusTimmingState extends State<BusTimming> {
  List<Buses> buses = [
    Buses(
        busName: 'توقيت ومسار حافلة سرسوف الفيراي ',
        busImage: 'assets/sarsof15.png'),
    Buses(
        busName: 'توقيت ومسار حافلة سرسوف  02',
        busImage: 'assets/sersof02.png'),
    Buses(
        busName: 'توقيت ومسار حافلة سرسوف  08',
        busImage: 'assets/sersof08.png'),
    Buses(
        busName: 'توقيت ومسار حافلة تبركات 01',
        busImage: 'assets/tabrakat01.png'),
    Buses(
        busName: 'توقيت ومسار حافلة تبركات 10',
        busImage: 'assets/tabrakat10.png'),
    Buses(
        busName: 'توقيت ومسار حافلة أدريان 09',
        busImage: 'assets/adrian09.png'),
    Buses(
        busName: 'توقيت ومسار حافلة أدريان 12',
        busImage: 'assets/adrian12.png'),
    Buses(
        busName: 'توقيت ومسار حافلة قطع الواد 03',
        busImage: 'assets/wad03.png'),
    Buses(
        busName: 'توقيت ومسار حافلة قطع الواد 06',
        busImage: 'assets/wad06.png'),
    Buses(
        busName: 'توقيت ومسار حافلة قطع الواد 07',
        busImage: 'assets/wad07.png'),
    Buses(
        busName: 'توقيت ومسار حافلة قطع الواد 11',
        busImage: 'assets/wad11.png'),
    Buses(busName: 'توقيت ومسار حافلة تهقارت', busImage: 'assets/tahagart.png'),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const MyDrawer(),
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
            clipper: WaveClipperTwo(flip: true, ),
            child: Container(
              height: 600,
              width: 500  ,
              color: Colors.pink,
              child: Center(child: Text("SideCutClipper()")),
            ),
          ),
              // Container(
              //     height: height * .2,
              //     width: width,
              //     decoration: const BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage('assets/shape.png'),
              //         fit: BoxFit.fill,
              //       ),
              //     )),
              Positioned(
                top: height * .05,
                child: SizedBox(
                  height: height * .1,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50, left: 50),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Candle',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          // const Spacer(),
                          IconButton(
                              onPressed: () {
                                return _scaffoldKey.currentState
                                    ?.openEndDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.white,
                              ))
                        ]),
                  ),
                ),
              ),
              Positioned(
                top: height * .15,
                right: width * .15,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
            // shrinkWrap: true,
            itemCount: buses.length,
            itemBuilder: (context, index) {
              final bus = buses[index];
              return Column(
                children: [
                  MyButton(
                    myFunc: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BusPage(bus: bus)));
                    },
                    height: 50.0,
                    width: (width * .8),
                    myText: bus.busName,
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              );
            },
          )
              )
          
        ],
      ),
    );
  }
}

class Buses {
  final String busName;
  final String busImage;

  Buses({required this.busName, required this.busImage});
}
