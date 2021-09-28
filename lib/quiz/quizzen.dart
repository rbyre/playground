import 'package:flutter/material.dart';
import 'package:playground/quiz/quiz_page.dart';

class Quizzen extends StatelessWidget {
  const Quizzen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}
