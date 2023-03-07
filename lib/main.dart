import 'package:flutter/material.dart';
import 'package:kbc/Home_Screen/home_screen.dart';
import 'package:kbc/Home_Screen/lose.dart';
import 'package:kbc/Home_Screen/question_screen.dart';
import 'package:kbc/Home_Screen/result.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
        'Second':(context) => QuestionScreen(),
        'Result':(context) => Win(),
        'lose':(context) => Lose(),
      },
    ),
  );
}
