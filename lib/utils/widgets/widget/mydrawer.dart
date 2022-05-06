import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const Text('Candle', style: TextStyle(

  fontSize: 50,
  fontWeight: FontWeight.bold,
  color: Color(0xff007BA4),
),),
          InkWell(
            onTap: (){},
            child: Row(
              children: const [
                Text('الرئيسية'),
                Icon(Icons.home_rounded)
              ],
            ),
          ),
          InkWell(
            onTap: (){},
            child: Row(
              children: const [
                Text('حولنا'),
                Icon(Icons.info_outline)
              ],
            ),
          ),
        ],
      ),
    );
  }
}