import 'package:flutter/material.dart';
import 'package:playground/contact.dart';
import 'package:playground/dice.dart';
import 'package:playground/home.dart';
import 'package:playground/quizz/quizzen.dart';
import 'package:playground/xylophone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Playground',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
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
      home: Home(),
      routes: {
        '/kontakt': (ctx) => Contact(),
        '/xylofon': (ctx) => Xylophone(),
        '/terninger': (ctx) => Dice(),
        '/quiz': (ctx) => Quizzen(),
      },
    );
  }
}
