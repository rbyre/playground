import 'package:flutter/material.dart';
import 'package:playground/todo/screens/add_task_screen.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AddTaskScreen(),
    );
  }
}
