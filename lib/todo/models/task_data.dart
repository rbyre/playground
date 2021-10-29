import 'package:flutter/foundation.dart';
import './todo_item.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<TodoItem> _todoItems = [
    TodoItem(
        whatTodo: 'Legg til noe med + og slett med longpress',
        isChecked: false),
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

  void deleteTodo(TodoItem currentTodoItem) {
    _todoItems.remove(currentTodoItem);
    notifyListeners();
  }
}
