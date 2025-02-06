import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 79, 9, 199),
              const Color.fromARGB(142, 0, 0, 0)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const Quiz(),
        ),
      ),
    );
  }
}
