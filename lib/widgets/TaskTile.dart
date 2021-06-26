import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo/model/task.dart';
import 'package:todo/provider/data.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final int index;

  TaskTile(this.task, this.index);

  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(color: Colors.red),
      onDismissed: (direction) {
        Provider.of<Data>(context, listen: false).deleteTask(index);
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(task.name + " has been removed")));
      },
      child: ListTile(
        title: Text(
          task.name,
          style: TextStyle(
              decoration: task.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: task.isDone,
          onChanged: (newValue) {
            // print(task.isDone);
            Provider.of<Data>(context, listen: false).toggleTask(task);
          },
        ),
      ),
    );
  }
}
