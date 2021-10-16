import 'package:flutter/material.dart';
import 'package:playground/animated_like/screen_title.dart';
import 'heart.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(height: 200, width: 400, child: ScreenTitle()),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              width: 200,
              child: Heart(),
            ),
          ],
        ),
      ),
    );
  }
}
