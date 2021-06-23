import 'package:flutter/material.dart';
import 'package:todo/screens/HomeScreen.dart';
import 'package:todo/screens/PodcastDetailsScreen.dart';
import 'package:todo/util/AppRoutes.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRoute,
      routes: {
        AppRoutes.homeRoute: (context) => HomeScreen(),
        AppRoutes.podcastDetailsRoute: (context) => PodcastDetailsScreen()
      },
    );
  }
}
