import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

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
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {},
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
