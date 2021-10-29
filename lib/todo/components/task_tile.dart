import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String task;
  bool isChecked;
  final ValueChanged<bool?> checkBoxCallback;
  final VoidCallback longPressCallback;

  TaskTile(
      {required this.task,
      this.isChecked = false,
      required this.checkBoxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) {
          checkBoxCallback(value);
        },
      ),
      onLongPress: longPressCallback,
    );
  }
}
