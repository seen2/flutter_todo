import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

class Data extends ChangeNotifier {
  List<Task> data = [];

  void setTask(String task) {
    data.add(Task(name: task));
    notifyListeners();
  }

  int get tasksLength => data.length;

  void toggleTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    data.removeAt(index);
    notifyListeners();
  }
}
