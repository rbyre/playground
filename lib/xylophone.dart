import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache(prefix: 'assets/sounds/');
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({MaterialColor buttonColor: Colors.red, int soundNumber: 1}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: buttonColor),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(buttonColor: Colors.red, soundNumber: 1),
              buildKey(buttonColor: Colors.orange, soundNumber: 2),
              buildKey(buttonColor: Colors.yellow, soundNumber: 3),
              buildKey(buttonColor: Colors.green, soundNumber: 4),
              buildKey(buttonColor: Colors.teal, soundNumber: 5),
              buildKey(buttonColor: Colors.blue, soundNumber: 6),
              buildKey(buttonColor: Colors.pink, soundNumber: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
