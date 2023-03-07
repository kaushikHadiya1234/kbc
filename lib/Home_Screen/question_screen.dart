import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  int i=0,j=0;
  int points=0;

   List qaList =["Meghalaya was originally a part of which of the following State?",
   "What is the capital of Karnataka?",
   "In which of the following state,the main language is Khasi?",
     "Which state has the largest area?",
     "Which state has the largest population?",
     "Which country has recently approved India as a wheat supplier?",
     "India’s first-ever Night Sky Sanctuary is located in which state/UT?",
     "What is the Capital of Uttaranchal?",
     "What is the Capital of Maharashtra?",
     "What is the Capital of Rajasthan?"
   ];
   List aList = ["NEFA","Bengaluru","Mizoram","Maharashtra","Uttar Pradesh","UAE","Himachal Pradesh","Dehradun","Bangalore","Rajsamand"];
   List bList = ["West Bengal","Shimoga","Nagaland","Madhya Pradesh","Maharastra","The Netherlands","Sikkim","Chandigarh","Mumbai","Jaipur"];
   List cList = ["Assam","Mysore","Meghalaya","Uttar Pradesh","Bihar","Egypt","Uttarakhand","Haridwar","Bhopal","Jodhpur"];
   List dList = ["Not Attempted","Gulbarga","Tripura","Rajasthan","Andra Pradesh","Australia","Ladakh","Meerut","Bihar","Ajmer"];
   List userAnsList = [];
   List AnsList = ["Assam","Gulbarga","Meghalaya","Rajasthan","Uttar Pradesh","Egypt","Ladakh","Dehradun","Mumbai","Jaipur"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz",
            style: TextStyle(fontSize: 30, color: Colors.yellow),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.access_time_filled_sharp,color: Colors.white,size: 30,),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
                width: double.infinity,
                child: Image.asset("Assets/Question_Screen/b1.jpeg",fit: BoxFit.fill,),),
         Center(
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Container(
                     height: 100,
                     width: 100,
                     alignment: Alignment.center,
                     decoration: BoxDecoration(
                       // borderRadius: BorderRadius.circular(20),
                         shape: BoxShape.circle,
                         gradient: LinearGradient(
                             colors: [
                               Colors.pink,
                               Colors.purple,
                               Colors.yellow,
                               Colors.cyan
                             ]
                         )
                     ),
                     child: Container(
                       height: 90,
                       width: 90,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         // borderRadius: BorderRadius.circular(20),
                           shape: BoxShape.circle,
                           color: Colors.black
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           InkWell(
                               onTap: () {
                                 setState(() {
                                   i++;
                                 });
                               },
                               child: Text("${i+1}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.white,),))
                         ],
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                   child: Container(
                    height: 150,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        //shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Colors.pink,
                              Colors.purple,
                              Colors.yellow,
                              Colors.cyan
                            ]
                        )
                    ),
                    child: Container(
                      height: 140,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                        //  shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${qaList[i]}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),),
                      ),
                    ),
        ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left :10,top: 20,right: 10),
                   child: InkWell(
                     onTap: () {
                       if (i < qaList.length) {
                         userAnsList.add("${aList[i]}");
                         setState(() {
                           j++;
                         });
                       }
                       if (i < qaList.length - 1) {
                         setState(() {
                           i++;
                         });
                       }
                     },
                     child: Container(
                       height: 60,
                       width: 250,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           //  shape: BoxShape.circle,
                           gradient: LinearGradient(
                               colors: [
                                 Colors.pink,
                                 Colors.purple,
                                 Colors.yellow,
                                 Colors.cyan
                               ]
                           )
                       ),
                       child: Container(
                         height: 50,
                         width: 240,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             //shape: BoxShape.circle,
                             color: Colors.black
                         ),
                         child: Text("${aList[i]}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: InkWell(
                     onTap: () {
                       if (i < qaList.length) {
                         userAnsList.add("${bList[i]}");
                         setState(() {
                           j++;
                         });
                       }
                       if (i < qaList.length - 1) {
                         setState(() {
                           i++;
                         });
                       }
                     },
                     child: Container(
                       height: 60,
                       width: 250,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           //  shape: BoxShape.circle,
                           gradient: LinearGradient(
                               colors: [
                                 Colors.pink,
                                 Colors.purple,
                                 Colors.yellow,
                                 Colors.cyan
                               ]
                           )
                       ),
                       child: Container(
                         height: 50,
                         width: 240,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             //shape: BoxShape.circle,
                             color: Colors.black
                         ),
                         child: Text("${bList[i]}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: InkWell(
                     onTap: () {
                       if (i < qaList.length) {
                         userAnsList.add("${cList[i]}");
                         setState(() {
                           j++;
                         });
                       }
                       if (i < qaList.length - 1) {
                         setState(() {
                           i++;
                         });
                       }
                     },
                     child: Container(
                       height: 60,
                       width: 250,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           //  shape: BoxShape.circle,
                           gradient: LinearGradient(
                               colors: [
                                 Colors.pink,
                                 Colors.purple,
                                 Colors.yellow,
                                 Colors.cyan
                               ]
                           )
                       ),
                       child: Container(
                         height: 50,
                         width: 240,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             //shape: BoxShape.circle,
                             color: Colors.black
                         ),
                         child: Text("${cList[i]}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: InkWell(
                     onTap: () {
                       if (i < qaList.length) {
                         userAnsList.add("${dList[i]}");
                         setState(() {
                           j++;
                         });
                       }
                       if (i < qaList.length - 1) {
                         setState(() {
                           i++;
                         });
                       }
                     },
                     child: Container(
                       height: 60,
                       width: 250,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           //  shape: BoxShape.circle,
                           gradient: LinearGradient(
                               colors: [
                                 Colors.pink,
                                 Colors.purple,
                                 Colors.yellow,
                                 Colors.cyan
                               ]
                           )
                       ),
                       child: Container(
                         height: 50,
                         width: 240,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             //shape: BoxShape.circle,
                             color: Colors.black
                         ),
                         child: Text("${dList[i]}",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),),
                       ),
                     ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 20),
                   child: Visibility(
                     visible: j>=10?true:false,
                     child: InkWell(
                       onTap: () {
                           Finish();
                            print("${userAnsList}");
                           setState(() {
                             if(points>=7)
                               {
                                 Navigator.pushReplacementNamed(context, "Result",arguments: points);
                               }
                             else
                               {
                                 Navigator.pushReplacementNamed(context, "lose",arguments: points);
                               }
                           });
                       },
                       child: Container(
                         height: 60,
                         width: 250,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             //  shape: BoxShape.circle,
                             gradient: LinearGradient(
                                 colors: [
                                   Colors.pink,
                                   Colors.purple,
                                   Colors.yellow,
                                   Colors.cyan
                                 ]
                             )
                         ),
                         child: Container(
                           height: 50,
                           width: 240,
                           alignment: Alignment.center,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                               //shape: BoxShape.circle,
                               color: Colors.black
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Check Result",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white,),)
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                 ),

               ],
             ),
           ),
         ),
          ],
        ),
      ),
    );
  }
  void Finish() {
    for (int i = 0; i < AnsList.length; i++) {
      if (AnsList[i] == userAnsList[i]) {
        points++;
      }
    }
  }
}
