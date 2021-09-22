import 'package:flutter/material.dart';
import 'package:playground/quizz/question.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int questionNumber = 0;
  List<Question> questionBank = [
    Question(questionText: 'Norges høyeste fjell heter Kattnakken.', questionAnswer: false),
    Question(
        questionText: 'Ca. en fjerdedel av menneskets bein ligger i føttene.',
        questionAnswer: true),
    Question(questionText: 'En snigles blod er grønt.', questionAnswer: false),
    Question(
        questionText: 'En mannlig hornbille kan løfte 850 ganger sin egen kroppsvekt.',
        questionAnswer: true),
  ];

  List<bool> answers = [false, true, false, true];

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
                questionNumber < questionBank.length
                    ? questionBank[questionNumber].questionText.toString()
                    : 'Ingen flere spørsmål!',
                style: TextStyle(fontSize: 25.0, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  bool correctAnswer = questionBank[questionNumber].questionAnswer;
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
                    questionNumber++;
                  });
                },
                child: const Text(
                  'Sant',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  bool correctAnswer = answers[questionNumber];
                  setState(() {
                    correctAnswer == false
                        ? scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ))
                        : scoreKeeper.add(Icon(
                            Icons.close,
                            color: Colors.red,
                          ));
                    questionNumber++;
                  });
                },
                child: const Text(
                  'Usant',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
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
