
import 'package:candle/utils/widgets/mybutton.dart';
import 'package:candle/utils/widgets/widget/mydrawer.dart';
import 'package:flutter/material.dart';

class Exams extends StatelessWidget {
  Exams({Key? key}) : super(key: key);


List<MyExams> exams = [
    MyExams(examName: 'examName', examImage: "examImage"),
    MyExams(examName: 'examName', examImage: "examImage"),
    MyExams(examName: 'examName', examImage: "examImage"),
    MyExams(
        examName: 'كلية العلوم وتكنولوجيا',
        examImage: ''),
    MyExams(
        examName: 'كلية الآداب واللغات',
        examImage: ''),
    MyExams(
        examName: 'كلية العلوم الإقتصادية وعلوم التسيير',
        examImage: ''),
    MyExams(
        examName: 'كلية الحقوق',
        examImage: ''),
    MyExams(
        examName: 'كلية العلوم الإجتماعية والإنسانية',
        examImage: ''),
    
  ];
  


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
     key: _scaffoldKey,
      endDrawer: MyDrawer(),
      
      body: Container(
        height: height,
        width: width,
        child: Stack(
          
          children: [
            Positioned(
              bottom: 0.0,
              child: SizedBox(
                height: height * .9,
                width: width,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final exam = exams[index];
                    if (index == 0 || index == 1 || index == 2) {
                      return  SizedBox(
                        height: height * .05,
                      );
                    } else {
                      return Column(
                  children: [
                    MyButton(
                      myFunc: () {
                       
                      },
                      height: 50.0,
                      width: (width * .8),
                      myText: exam.examName,
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                );
                    }
                  },
                  itemCount: exams.length,
                ),
              ),
            ),
            Positioned(
              height: height * .2,
              width: width,
              child: Image.asset('assets/shape.png', fit: BoxFit.fill,)
              ,
              
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
          ],
        ),
      ),
    );
  }
}

class MyExams {
  final String examName;
  final String examImage;

  MyExams({required this.examName, required this.examImage});
}