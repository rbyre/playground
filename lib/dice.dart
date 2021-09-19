import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int _diceNumber1 = 6;
  int _diceNumber2 = 6;

  void _roll1() {
    Random random = new Random();
    int randomNumber = random.nextInt(6) + 1;
    setState(() {
      _diceNumber1 = randomNumber;
    });
  }

  void _roll2() {
    Random random = new Random();
    int randomNumber = random.nextInt(6) + 1;
    setState(() {
      _diceNumber2 = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Terninger'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _roll1();
                    },
                    child: Image.asset('images/dice${_diceNumber1}.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      _roll2();
                    },
                    child: Image.asset('images/dice${_diceNumber2}.png'),
                  ),
                ),
              ],
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
                ))
          ],
        ),
      ),
    );
  }
}
