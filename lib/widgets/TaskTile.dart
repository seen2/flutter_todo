import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void toggleCheckBox(bool checlBoxState) {
    setState(() {
      isChecked = checlBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is a task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing:
          TaskCheckBox(isChecked: isChecked, toggleCheckBox: toggleCheckBox),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  
  // bool? isChecked = false;
  final Function? toggleCheckBox;
  final bool isChecked;

  TaskCheckBox({this.isChecked = false, this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (newValue) {
        toggleCheckBox!(newValue);
      },
    );
  }
}
