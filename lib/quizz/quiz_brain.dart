import 'package:playground/quizz/question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(questionText: 'Norges høyeste fjell heter Kattnakken.', questionAnswer: false),
    Question(
        questionText: 'Ca. en fjerdedel av menneskets bein ligger i føttene.',
        questionAnswer: true),
    Question(questionText: 'En snigles blod er grønt.', questionAnswer: false),
    Question(
        questionText: 'En mannlig hornbille kan løfte 850 ganger sin egen kroppsvekt.',
        questionAnswer: true),
    Question(
        questionText: 'Den totale overflaten av to menneske lunger er ca. 70 kvadratmeter.',
        questionAnswer: true),
    Question(
        questionText:
            'Sjokolade påvirker en hunds hjerte og nervesystem nok til at hunden kan dø av å spise det.',
        questionAnswer: true),
    Question(
        questionText: 'Ingen del av et kvadratisk stykke tørt papir kan brettes mer enn 7 ganger.',
        questionAnswer: false),
  ];

  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  bool getQuestionAnswer(int questionNumber) {
    return _questionBank[questionNumber].questionAnswer;
  }

  int getQuizLength() {
    return _questionBank.length;
  }
}
