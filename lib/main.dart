import 'package:flutter/material.dart';
import 'package:todo/screens/HomeScreen.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.lightBlueAccent,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
