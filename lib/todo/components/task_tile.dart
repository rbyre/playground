import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String task;
  bool isChecked;

  TaskTile({
    required this.task,
    this.isChecked = false,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task,
        style: TextStyle(
            decoration: widget.isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: widget.isChecked,
        onChanged: (bool? value) {
          setState(() {
            widget.isChecked = value!;
          });
        },
      ),
    );
  }
}
