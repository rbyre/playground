import 'package:flutter/material.dart';

class Kort {
  final String id;
  final String title;
  final Color color;
  final String route;

  const Kort(
      {required this.id, required this.title, required this.route, this.color = Colors.orange});
}
