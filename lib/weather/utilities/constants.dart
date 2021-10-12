import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const tempTextStyle = TextStyle(fontFamily: 'Spartan MB', fontSize: 90);
const messageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const buttonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const conditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const textFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10),), borderSide: BorderSide.none),
);
