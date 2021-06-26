import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo/provider/data.dart';

import 'TaskTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.tasksLength,
        itemBuilder: (context, index) {
          return TaskTile(taskData.data[index], index);
        },
      );
    });
  }
}
