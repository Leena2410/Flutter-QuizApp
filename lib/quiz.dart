// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:quizapp/home.dart';
import 'package:quizapp/questions.dart';

/* *************************** VARIABLES *************************** */
var bg_color = Colors.white;
var appbar_bg_color = Colors.deepPurple;
var appbar_bg_text_color = Colors.purple.shade50;

/* *************************** VARIABLES *************************** */

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  @override
  void initState() {
    super.initState();
    activeScreen = HomeScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bg_color,
        appBar: AppBar(
          backgroundColor: appbar_bg_color,
          title: Text(
            "Quiz App",
            style: TextStyle(
              color: appbar_bg_text_color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.deepPurpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: HomeScreen(null),
        ),
      ),
    );
  }
}
