import 'package:flutter/foundation.dart';
import './todo_item.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<TodoItem> _todoItems = [
    TodoItem(whatTodo: 'Buy new mac', isChecked: true),
    TodoItem(whatTodo: 'Get more coffe'),
  ];

  UnmodifiableListView<TodoItem> get todos {
    return UnmodifiableListView(_todoItems);
  }

  int get taskCount {
    return _todoItems.length;
  }

  void addTodo(String newTodoTitle) {
    final todo = TodoItem(whatTodo: newTodoTitle);
    _todoItems.add(todo);
    notifyListeners();
  }

  void updateTodo(TodoItem currentTodoItem) {
    currentTodoItem.updateCheckBox();
    notifyListeners();
  }
}
