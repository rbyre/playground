import 'package:flutter/material.dart';
import './models/kort.dart';

const List myApps = [
  Kort(
    id: 'a1',
    title: 'Kontakt',
    route: 'kontakt',
    // description: 'Et kontaktkort',
    color: Colors.teal,
  ),
  Kort(
    id: 'a2',
    title: 'Xylofon',
    route: 'xylofon',
    // description: 'Spill en sang',
    color: Colors.pink,
  ),
  Kort(
    id: 'a3',
    title: 'Terninger',
    route: 'terninger',
    // description: 'Klikk på terningene for å rulle',
    color: Colors.orange,
  ),
  Kort(
    id: 'a4',
    title: 'Quiz',
    route: 'quiz',
    // description: 'Se om du får alt rett',
    color: Colors.lightBlue,
  ),
];

// SizedBox(
// height: 8,
// ),
// Text(
// 'Velg fra listen',
// style: TextStyle(
// fontFamily: 'SourceSansPro',
// color: Colors.teal[300],
// fontSize: 20,
// letterSpacing: 2.5),
// ),
// SizedBox(
// height: 32,
// ),
// SizedBox(
// height: 400,
// child: ListView(
// children: [
// ListTile(
// tileColor: Colors.teal,
// leading: ElevatedButton.icon(
// style: ElevatedButton.styleFrom(
// primary: Colors.teal[300],
// ),
// onPressed: () {
// Navigator.push(
// context, MaterialPageRoute(builder: (context) => Contact()));
// },
// icon: Icon(
// Icons.contact_mail,
// color: Colors.white,
// ),
// label: Text('Kontakt   ')),
// ),
// ListTile(
// tileColor: Colors.teal,
// leading: ElevatedButton.icon(
// style: ElevatedButton.styleFrom(
// primary: Colors.teal[300],
// ),
// onPressed: () {
// Navigator.push(
// context, MaterialPageRoute(builder: (context) => Xylophone()));
// },
// icon: Icon(
// Icons.music_note,
// color: Colors.white,
// ),
// label: Text(
// 'Xylofon   ',
// style: TextStyle(color: Colors.white),
// )),
// ),
// ListTile(
// tileColor: Colors.teal,
// leading: ElevatedButton.icon(
// style: ElevatedButton.styleFrom(
// primary: Colors.teal[300],
// ),
// onPressed: () {
// Navigator.push(context, MaterialPageRoute(builder: (context) => Dice()));
// },
// icon: Icon(
// Icons.casino,
// color: Colors.white,
// ),
// label: Text(
// 'Terninger',
// style: TextStyle(color: Colors.white),
// )),
// ),
// ListTile(
// tileColor: Colors.teal,
// leading: ElevatedButton.icon(
// style: ElevatedButton.styleFrom(
// primary: Colors.teal[300],
// ),
// onPressed: () {
// Navigator.push(
// context, MaterialPageRoute(builder: (context) => Quizzen()));
// },
// icon: Icon(
// Icons.question_answer,
// color: Colors.white,
// ),
// label: Text(
// 'Quiz         ',
// style: TextStyle(color: Colors.white),
// )),
// ),
// ListTile(
// tileColor: Colors.teal,
// leading: ElevatedButton.icon(
// style: ElevatedButton.styleFrom(
// primary: Colors.teal[300],
// ),
// onPressed: () {
// Navigator.push(
// context, MaterialPageRoute(builder: (context) => BMICalculator()));
// },
// icon: Icon(
// Icons.calculate,
// color: Colors.white,
// ),
// label: Text(
// 'BMI Kalkulator',
// style: TextStyle(color: Colors.white),
// )),
// ),
// ],
// ),
// )
// ],
// ),
// ),
