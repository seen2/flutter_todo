import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/HomeScreen.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String data = "My top Secret Data";

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) => data,
      child: MaterialApp(
        home: Material(child: HomeScreen()),
      ),
    );
  }
}
