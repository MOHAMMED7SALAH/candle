import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/utils/widgets/widget/mydrawer.dart';
import 'package:candle/views/papier_page.dart';
import 'package:flutter/material.dart';


// Positioned(
//             height: size.height * .2,
//             width: size.width,
//             child: Image.asset('assets/shape.png', fit: BoxFit.fill,),
//           ),
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
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const MyDrawer(),
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
                    final myPapier = papier[index];
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
                            builder: (context) => PapierPage(myPapier: myPapier)));
                      },
                      height: 50.0,
                      width: (size.width * .8),
                      myText: myPapier.papierName,
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                );
                    }
                  },
                  itemCount: papier.length,
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

class Papier {
  final String papierName;
  final String papierImage;

  Papier({required this.papierName, required this.papierImage});
}






// ListView.builder(
//                 physics: const BouncingScrollPhysics(),
//             // shrinkWrap: true,
//             itemCount: papier.length,
//             itemBuilder: (context, index) {
//               final myPapier = papier[index];
//               return Column(
//                 children: [
//                   MyButton(
//                     myFunc: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => PapierPage(myPapier: myPapier)));
//                     },
//                     height: 50.0,
//                     width: (width * .8),
//                     myText: myPapier.papierName,
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   )
//                 ],
//               );
//             },
//           )