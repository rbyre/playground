import 'package:flutter/material.dart';
import 'package:playground/Contact.dart';
import 'package:playground/dice.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // appBar: AppBar(
        //   backgroundColor: Colors.pinkAccent,
        //   title: Text('Hjem'),
        // ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              'Flutter Test App',
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 48, color: Colors.white),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Velg fra listen',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal[300],
                  fontSize: 20,
                  letterSpacing: 2.5),
            ),
            SizedBox(
              height: 32,
            ),
            Expanded(
              child: SizedBox(
                height: 400,
                child: ListView(
                  children: [
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        tileColor: Colors.teal,
                        leading: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal[300],
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Contact()));
                            },
                            icon: Icon(
                              Icons.contact_mail,
                              color: Colors.white,
                            ),
                            label: Text('Kontakt')),
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        tileColor: Colors.teal,
                        leading: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal[300],
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => Dice()));
                            },
                            icon: Icon(
                              Icons.casino,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Terning',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
