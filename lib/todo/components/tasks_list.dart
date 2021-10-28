import 'package:flutter/material.dart';
import 'package:playground/todo/components/task_tile.dart';
import 'package:playground/todo/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final currentTodo = taskData.todos[index];
            return TaskTile(
              task: currentTodo.whatTodo,
              isChecked: currentTodo.isChecked,
            );
          },
        );
      },
    );
  }
}
