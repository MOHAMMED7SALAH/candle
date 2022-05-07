import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/utils/widgets/widget/mydrawer.dart';
import 'package:candle/views/bus_timming.dart';
import 'package:candle/views/demands.dart';
import 'package:candle/views/exam.dart';
import 'package:candle/views/papier.dart';
import 'package:candle/views/univ.clubs.dart';
import 'package:candle/views/websites_university.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

 
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
              Container(
                  height: height*.2,
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
                  // color: Colors.green,
                  height: height * .1,
                  width: width ,
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
                                return _scaffoldKey.currentState?.openEndDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                size: 30,
                                color: Colors.white,
                              ))
                        ]),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          MyButton(
              myFunc: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  BusTimming()),
  );
              },
              height: 50.0,
              width: (width * .8),
              myText: 'توقيت الحافلات'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>    DemandesSimple()),
  );
              },
              height: 50.0,
              width: (width * .8),
              myText: 'نماذج الطلبات الخطية'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  MyPapier()),
  );
              },
              height: 50.0,
              width: (width * .8),
              myText: 'وثائق ادارية'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  WebSites()),
  );
              },
              height: 50.0,
              width: (width * .8),
              myText: 'روابط المواقع الخاصة بالجامعة'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Exams()),
  );
                
              },
              height: 50.0,
              width: (width * .8),
              myText: 'اسئلة الامتحانات السابقة'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  UnivClubs()),
  );
              },
              height: 50.0,
              width: width * .8,
              myText: 'نوادي الجامعة'),
        ],
      ),
    );
  }
}
