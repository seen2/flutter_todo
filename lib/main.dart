import 'package:flutter/material.dart';
import 'package:todo/routes/myAppRoutes.dart';
import 'package:todo/screens/ContactDetailsScreen.dart';
import 'package:todo/screens/HomeScreen.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Material(child: HomeScreen()),
      routes: {
        MyAppRoute.contactDetailScreen: (context) => ContactDetailsScreen(),
      },
    );
  }
}
