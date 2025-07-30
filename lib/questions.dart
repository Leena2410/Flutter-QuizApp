import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OutlinedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Go back"),
      ),
    );
  }
}
