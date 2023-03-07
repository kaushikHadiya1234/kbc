import 'package:flutter/material.dart';

class Lose extends StatefulWidget {
  const Lose({Key? key}) : super(key: key);

  @override
  State<Lose> createState() => _LoseState();
}

class _LoseState extends State<Lose> {
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
                "Assets/Result/lose.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170),
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
