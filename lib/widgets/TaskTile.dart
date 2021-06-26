import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function? toggleCheckBox;
  final bool isChecked;
  final String task;
  TaskTile({
    required this.task,
    this.isChecked = false,
    this.toggleCheckBox,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(
        task,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          toggleCheckBox!();
        },
      ),
    );
  }
}
