import 'package:flutter/material.dart';
import 'package:playground/todo/components/tasks_list.dart';
import 'package:playground/todo/models/task_data.dart';
import 'package:playground/todo/screens/add_task_bottom_sheet.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  Widget? buildBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.only(top: 60.0, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Dette må du få gjort 😁',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: TasksList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
              // isScrollControlled: true,
              context: context,
              builder: (context) => AddTaskBottomSheet());
        },
      ),
    );
  }
}
