import 'package:flutter/cupertino.dart';

class TodoItem {
  final String whatTodo;
  bool isChecked;

  TodoItem({required this.whatTodo, this.isChecked = false});

  void updateCheckBox() {
    isChecked = !isChecked;
  }
}
