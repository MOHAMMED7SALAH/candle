import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/views/bus_page.dart';
import 'package:flutter/material.dart';

class BusTimming extends StatefulWidget {
  const BusTimming({Key? key}) : super(key: key);

  @override
  State<BusTimming> createState() => _BusTimmingState();
}

class _BusTimmingState extends State<BusTimming> {
  List<Buses> buses = [
    Buses(busName: 'barca', busImage: 'assets/tabrakat10.png'),
    Buses(
        busName: 'توقيت ومسار حافلة سرسوف الفيراي 15',
        busImage: 'assets/tabrakat10.png'),
    Buses(busName: 'barca', busImage: 'assets/tabrakat10.png'),
    Buses(busName: 'barca', busImage: 'assets/tabrakat10.png'),
    Buses(busName: 'barca', busImage: 'assets/tabrakat10.png'),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                  'Candle',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff007BA4),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  // color: Colors.blue,
                  ),
            ),
            ListTile(
              title: const Text('الرئيسية'),
              leading: const Icon(Icons.home_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text('حولنا'),
              leading: const Icon(Icons.info_outline),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: height * .2,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/shape.png'),
                      fit: BoxFit.fill,
                    ),
                  )),
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
                // left: 40,
                // bottom: ,
                right: width * .15,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: IconButton(
                      onPressed: () {},
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

          ListView.builder(
            shrinkWrap: true,
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

          // Column(
          //   children: [
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: (width * .8),
          //  'توقيت ومسار حافلة سرسوف الفيراي 15'
          //  ),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: (width * .8),
          //         myText: 'توقيت ومسار حافلة سرسوف  02'),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: (width * .8),
          //         myText: 'توقيت ومسار حافلة سرسوف  08'),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: (width * .8),
          //         myText: 'توقيت ومسار حافلة تبركات 01'),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: (width * .8),
          //         myText: 'توقيت ومسار حافلة تبركات 10'),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: width * .8,
          //         myText: 'توقيت ومسار حافلة أدريان 09'),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: width * .8,
          //         myText: 'توقيت ومسار حافلة أدريان 12'),
          //       const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: width * .8,
          //         myText: 'توقيت ومسار حافلة قطع الواد 03'),
          //         const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: width * .8,
          //         myText: 'توقيت ومسار حافلة قطع الواد 06'),
          //         const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: width * .8,
          //         myText: 'توقيت ومسار حافلة قطع الواد 07'),
          //         const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: width * .8,
          //         myText: 'توقيت ومسار حافلة قطع الواد 11'),
          //         const SizedBox(
          //       height: 20,
          //     ),
          //     MyButton(
          //         myFunc: () {},
          //         height: 50.0,
          //         width: width * .8,
          //         myText: 'توقيت ومسار حافلة تهقارت'),
          //         const SizedBox(
          //       height: 20,
          //     ),
          //   ],
          // ),
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
