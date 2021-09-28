import 'package:flutter/material.dart';

class Kort {
  final String id;
  final String title;
  final String description;
  final Color color;
  final String route;

  const Kort(
      {required this.id,
      required this.title,
      required this.description,
      required this.route,
      this.color = Colors.orange});
}
