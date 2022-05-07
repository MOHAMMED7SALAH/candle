import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  double height;

  double width;

  String myText;

  var myFunc;

  MyButton({
    Key? key,
    required this.height,
    required this.width,
    required this.myText,
    required this.myFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
    color: Colors.grey[100],
    borderRadius: BorderRadius.circular(26),
    
  ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: InkWell(
          onTap: myFunc,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              const Icon(Icons.arrow_back_ios),
              Text(myText,
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: const TextStyle(
                
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
