import 'package:flutter/material.dart';
import 'package:playground/quiz/quiz_brain.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  QuizBrain quizBrain = new QuizBrain();

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getQuestionAnswer();

    setState(() {
      correctAnswer == true
          ? scoreKeeper.add(Icon(
              Icons.check,
              color: Colors.green,
            ))
          : scoreKeeper.add(Icon(
              Icons.close,
              color: Colors.red,
            ));
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getCurrentQuestionNumber() < quizBrain.getQuizLength()
                    ? quizBrain.getQuestionText().toString()
                    : 'Ingen flere spørsmål!',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        quizBrain.getCurrentQuestionNumber() < quizBrain.getQuizLength()
            ? Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextButton(
                        style: TextButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () {
                          setState(() {
                            checkAnswer(true);
                          });
                        },
                        child: const Text(
                          'Sant',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextButton(
                          style: TextButton.styleFrom(backgroundColor: Colors.red),
                          onPressed: () {
                            checkAnswer(false);
                          },
                          child: const Text(
                            'Usant',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    ),
                  ),
                ],
              )
            : Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.lightBlueAccent),
                    onPressed: () {
                      setState(() {
                        quizBrain.resetQuiz();
                        scoreKeeper = [];
                      });
                    },
                    child: const Text(
                      'Reset',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
        Row(
          children: scoreKeeper,
        ),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Tilbake',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
