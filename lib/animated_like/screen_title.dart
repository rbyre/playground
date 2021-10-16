import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text = 'Like it';

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 36, color: Colors.pink, fontWeight: FontWeight.bold),
        ),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 2000),
      curve: Curves.easeIn,
      builder: (BuildContext context, double _val, Widget? child) {
        return Opacity(
          opacity: _val,
          child: Padding(
            padding: EdgeInsets.only(
              left: _val * 20,
            ),
            child: child,
          ),
        );
      },
    );
  }
}
