import 'package:flutter/material.dart';

class MyTest extends StatelessWidget {
  MyTest({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
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
                top: height * .17,
                right: width * .15,
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      backgroundBlendMode: BlendMode.darken,
                      border: Border.all(color: Colors.blueAccent),
                      color: Colors.black,
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
        )
        );
  }
}
