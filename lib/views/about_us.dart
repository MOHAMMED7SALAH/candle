import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        height: size.height ,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/ui.png',), fit: BoxFit.cover)
        ),
        child: Stack(
        children: [
          Positioned(
                top: size.height * .1,
                right: size.width * .1,
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
            top: size.height * .5,
            child: Container(
                      height: size.height *2,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(180)
                        
                         

                      ),
                      child: Column(
                        children: [
                          SizedBox(height: size.height *.1,),
                          Container(
                            height: size.height *.3,
                            width: size.width,
                            decoration:  BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/info.png' , ))
        ),
                          )
                        ],
                      ),
                    ),
          )
          
        ],
        ),
      ),
    );
  }
}
