import 'package:flutter/material.dart';
import 'screen/level_screen.dart';
import 'screen/start_screen.dart';
import 'screen/questions_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Quicksand",
      ),
      routes: {
        "/": (context) => StartScreen(),
        LevelScreen.levelPage: (context) => LevelScreen(),
        QuestionScreen.questionPage: (context) => QuestionScreen(),
      },
    );
  }
}
