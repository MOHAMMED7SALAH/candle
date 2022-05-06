import 'package:candle/utils/widgets/mybutton.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer:  Drawer(
         child: ListView(  
    padding: const EdgeInsets.all(20),  
    children: [  
      const DrawerHeader(  
        child: Center(
          child: Text('Candle', style: TextStyle(

  fontSize: 50,
  fontWeight: FontWeight.bold,
  color: Color(0xff007BA4),
),),
        ),  
        decoration: BoxDecoration(  
          // color: Colors.blue,  
        ),  
      ),  
      ListTile(  
        title: const Text('الرئيسية'),
        leading: const Icon(Icons.home_rounded),  
        onTap: () {  
            
        },  
      ),  
      ListTile(  
        title: const Text('حولنا'),
              leading: const Icon(Icons.info_outline) ,   
        onTap: () {  
           
        },  
      ),  
    ],  
  ),  
)  ,
      
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
              myFunc: () {},
              height: 50.0,
              width: (width * .8),
              myText: 'توقيت الحافلات'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {},
              height: 50.0,
              width: (width * .8),
              myText: 'نمتذج الطلبات الخطية'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {},
              height: 50.0,
              width: (width * .8),
              myText: 'وثائق ادارية'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {},
              height: 50.0,
              width: (width * .8),
              myText: 'روابط المواقع الخاصة بالجامعة'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {},
              height: 50.0,
              width: (width * .8),
              myText: 'اسئلة الامتحانات السابقة'),
          const SizedBox(
            height: 20,
          ),
          MyButton(
              myFunc: () {},
              height: 50.0,
              width: width * .8,
              myText: 'نوادي الجامعة'),
        ],
      ),
    );
  }
}
