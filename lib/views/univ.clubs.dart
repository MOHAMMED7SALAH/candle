import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/utils/widgets/widget/mydrawer.dart';
import 'package:candle/views/club.dart';
import 'package:flutter/material.dart';

class UnivClubs extends StatelessWidget {
  
  UnivClubs({Key? key, }) : super(key: key);

 
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
                                color: Colors.white),
                              )
                              
            
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
          MyButton(height: height * .09, width: width * .8, myText: 'نادي البرمجة والتصميم الجرافيكي', myFunc: (){

             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Club()),
  );
          })
        ],
      ),
    );
  }
}


