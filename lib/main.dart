import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo/provider/data.dart';
import 'package:todo/screens/HomeScreen.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
