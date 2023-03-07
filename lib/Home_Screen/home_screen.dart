import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          leading: Icon(Icons.menu,color: Colors.white,size: 30,),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.account_circle_outlined,color: Colors.white,size: 30,),
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset(
                "Assets/HomeScreen_img/kbc.jpg",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 500),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "Second");
                        },
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
                              children: [
                                Icon(Icons.play_circle,size: 90,color: Colors.white,),
                                //Text("Play",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white,),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
