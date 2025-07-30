// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/quiz.dart';

/* **************** VARIABLES **************** */
var button_text_color = Colors.white;
var button_bg_color = const Color.fromARGB(0, 255, 255, 255);

/* **************** VARIABLES **************** */
// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen(this.switchScreen, {super.key});
  void Function()? switchScreen;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void Function()? switchScreen;
  Widget? activeScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset("assets/images/quiz-logo.png", width: 250),
          ),
          const SizedBox(height: 35),
          Text(
            "Learn Flutter!!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 35),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Questions()),
              );
            },
            label: Text("Continue", style: TextStyle(color: Colors.white)),
            icon: Icon(
              Icons.keyboard_arrow_up_rounded,
              size: 25,
              color: button_text_color,
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: button_text_color, width: 1),
              padding: EdgeInsets.all(20),
              backgroundColor: button_bg_color,
            ),
          ),
        ],
      ),
    );
  }
}
