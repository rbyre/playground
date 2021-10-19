import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
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
                  'Todoey',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                child: Expanded(
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Text('bob'),
                  ),
                ),
              ),
              FloatingActionButton(
                foregroundColor: Colors.white,
                backgroundColor: Colors.lightBlueAccent,
                onPressed: () {},
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
