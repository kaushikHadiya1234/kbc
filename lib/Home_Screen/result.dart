import 'package:flutter/material.dart';

class Win extends StatefulWidget {
  const Win({Key? key}) : super(key: key);

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {
  @override
  Widget build(BuildContext context) {
    int points = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Result",
            style: TextStyle(fontSize: 30, color: Colors.yellow),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "Assets/Result/k2.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Center(
                child: Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
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
                    height: 40,
                    width: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       // shape: BoxShape.circle,
                        color: Colors.black
                    ),
                    child: Text("${points}/10",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white,),),
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
