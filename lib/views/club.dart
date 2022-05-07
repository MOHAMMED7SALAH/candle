import 'package:candle/utils/widgets/widget/mydrawer.dart';
import 'package:flutter/material.dart';
 
class Club extends StatelessWidget {
  
  Club({Key? key, }) : super(key: key);

  
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      body: 
           Container(
            height: height,
            width: width,
            child: Stack(
              children: [
                Container(
                  height: height * .2,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/shape.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                  top: height * .175,
                  right: width * .14,
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
                Positioned(
                  top: height * .2,
                  right: width* .1,
                  child: Container(
            height: height * 0.6,
            width: width * .8,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/club.png'))),
          ))
              ],
              
            ),
            
                  ),
          
        
    );
  }
}
