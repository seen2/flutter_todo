import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

import 'TaskTile.dart';

class TaskList extends StatelessWidget {
  final List<Task>? tasks;
  final Function? isChanged;
  TaskList({this.tasks, this.isChanged});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks?.length ?? 0,
        itemBuilder: (context, index) {
          return TaskTile(
            task: tasks![index].name,
            isChecked: tasks![index].isDone,
            toggleCheckBox: () {
              {
                tasks![index].toggleIsDone();
                isChanged!();
              }
            },
          );
        });
  }
}
