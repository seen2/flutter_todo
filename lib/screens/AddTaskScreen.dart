import 'package:flutter/material.dart';
import 'package:todo/model/task.dart';

class AddTaskScreen extends StatefulWidget {
  final List<Task> tasks;
  final Function onSave;

  AddTaskScreen({required this.tasks, required this.onSave});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String? taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          children: [
            Text(
              "Add Task",
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  taskName = value;
                });
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                widget.tasks.add(Task(name: taskName!));
                widget.onSave();
              },
              child: Text(
                "Save",
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    color: Colors.lightBlueAccent),
              ),
            )
          ],
        ),
      ),
    );
  }
}
