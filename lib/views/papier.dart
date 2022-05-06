import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/utils/widgets/widget/mydrawer.dart';
import 'package:candle/views/papier_page.dart';
import 'package:flutter/material.dart';

class MyPapier extends StatefulWidget {
  const MyPapier({Key? key}) : super(key: key);

  @override
  State<MyPapier> createState() => _MyPapierState();
}

class _MyPapierState extends State<MyPapier> {
  List<Papier> papier = [
    Papier(
        papierName: 'ملف المنحة',
        papierImage: 'assets/bourse.png'),
    Papier(
        papierName: 
        'ملف الإيواء (الإقامة الجامعية)',
        papierImage: 'assets/ikama.png'),
    Papier(
        papierName: 
        'ملف النقل الجامعي',
        papierImage: 'assets/trans.png'),
    Papier(
        papierName: 
        'ملف فتح حساب بريدي',
        papierImage: 'assets/ccp.png'),
    Papier(
        papierName: 
        'ملف التسجيلات الجامعية',
        papierImage: 'assets/inscription.png'),
    Papier(
        papierName: 
        'ملف التحويلات الجامعية',
        papierImage: 'assets/tahwilat.png'),
    
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
            itemCount: papier.length,
            itemBuilder: (context, index) {
              final myPapier = papier[index];
              return Column(
                children: [
                  MyButton(
                    myFunc: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PapierPage(myPapier: myPapier)));
                    },
                    height: 50.0,
                    width: (width * .8),
                    myText: myPapier.papierName,
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

class Papier {
  final String papierName;
  final String papierImage;

  Papier({required this.papierName, required this.papierImage});
}