import 'package:flutter/material.dart';
import 'package:playground/todo/models/todo_item.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTodoTitle = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              cursorColor: Colors.lightBlueAccent,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                constraints: BoxConstraints(minWidth: 23),
              ),
              onChanged: (newText) {
                setState(() {
                  newTodoTitle = newText;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    backgroundColor: Colors.lightBlueAccent),
              ),
              onPressed: () {
                newTodoTitle;
                Provider.of<TaskData>(context, listen: false)
                    .addTodo(newTodoTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
