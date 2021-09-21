import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatefulWidget {
  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int soundNumber) {
    final player = AudioCache(prefix: 'assets/sounds/');
    player.play('assets_note$soundNumber.wav');
  }

  final Map<String, Color> colors = {
    'purple': Colors.purple,
    'blue': Colors.blue,
    'yellow': Colors.yellow,
    'pink': Colors.pink,
    'teal': Colors.teal,
    'orange': Colors.orange,
    'indigo': Colors.indigo,
  };

  Color? selectedColor;
  int soundIndex = 1;

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

  void _setColor(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Xylofon App',
            style: TextStyle(fontSize: 20),
          ),
          backgroundColor: selectedColor ?? Colors.black,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (var i = 0; i < colors.length; i++)
                Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: colors.values.elementAt(i),
                      minimumSize: Size(300, 60),
                    ),
                    child: Icon(Icons.music_note_sharp),
                    onPressed: () => {
                      _setColor(colors.values.elementAt(i)),
                      playSound(i + 1),
                    },
                  ),
                ),
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
