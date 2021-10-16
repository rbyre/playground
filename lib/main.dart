import 'package:flutter/material.dart';
import 'package:playground/animated_like/heart_screen.dart';
import 'package:playground/bmi_calculator/bmi_calculator.dart';
import 'package:playground/contact.dart';
import 'package:playground/dice.dart';
import 'package:playground/home.dart';
import 'package:playground/lottie.dart';
import 'package:playground/quiz/quizzen.dart';
import 'package:playground/weather/screens/loading_screen.dart';
import 'package:playground/xylophone.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Playground',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'SourceSansPro',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              caption: TextStyle(fontSize: 24, fontFamily: 'pacifico'),
            ),
      ),
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Home(),
        '/kontakt': (ctx) => Contact(),
        '/xylofon': (ctx) => Xylophone(),
        '/terninger': (ctx) => Dice(),
        '/quiz': (ctx) => Quizzen(),
        '/bmi': (ctx) => BMICalculator(),
        '/weather': (ctx) => LoadingScreen(),
        '/heart': (ctx) => HeartScreen(),
        '/lottie': (ctx) => LottieScreen(),
      },
    );
  }
}
