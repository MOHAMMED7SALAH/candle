import 'package:candle/views/about_us.dart';
import 'package:candle/views/home.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            leading: const Icon(Icons.home_rounded, color: Colors.black,),
            onTap: () {
               Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Home()),
  );
            },
          ),
          ListTile(
            
            title: const Text('حولنا'),
            leading: const Icon(Icons.info_outline,color: Colors.black,),
            onTap: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AboutUs()),
  );
            },
          ),
        ],
      ),
    );
  }
}
