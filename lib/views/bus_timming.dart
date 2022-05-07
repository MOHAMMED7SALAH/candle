import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/views/bus_page.dart';
import 'package:flutter/material.dart';

class BusTimming extends StatelessWidget {
  BusTimming({Key? key}) : super(key: key);
  

  List<Buses> buses = [
    Buses(busName: 'busName', busImage: "busImage"),
    Buses(busName: 'busName', busImage: "busImage"),
    Buses(busName: 'busName', busImage: "busImage"),
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


  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: const Drawer(),
      
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          
          children: [
            Positioned(
              bottom: 0.0,
              child: SizedBox(
                height: size.height * .9,
                width: size.width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final bus = buses[index];
                    if (index == 0 || index == 1 || index == 2) {
                      return const SizedBox(
                        height: 30,
                      );
                    } else {
                      return Column(
                  children: [
                    MyButton(
                      myFunc: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BusPage(bus: bus)));
                      },
                      height: 50.0,
                      width: (size.width * .8),
                      myText: bus.busName,
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                );
                    }
                  },
                  itemCount: buses.length,
                ),
              ),
            ),
            Positioned(
              height: size.height * .2,
              width: size.width,
              child: Image.asset('assets/shape.png', fit: BoxFit.fill,)
              ,
              
            ),
            Positioned(
                top: size.height * .05,
                child: SizedBox(
                  height: size.height * .1,
                  width: size.width,
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
                top: size.height * .175,
                right: size.width * .14,
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                       
                        border: Border.all(color: Colors.blueAccent),
                        color: Color.fromARGB(255, 240, 234, 234),
                        borderRadius: BorderRadius.circular(50)),
                    child: 
                         Icon(
                          Icons.arrow_forward_ios,
                        ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
class Buses {
  final String busName;
  final String busImage;

  Buses({required this.busName, required this.busImage});
}