import 'package:flutter/material.dart';
import 'package:flutter_quiz/questions_screen.dart';
import 'package:flutter_quiz/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

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
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
