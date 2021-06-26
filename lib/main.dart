import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/screens/HomeScreen.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: Material(child: HomeScreen()),
      ),
    );
  }
}

class Data extends ChangeNotifier {
  String data = "My Secret Data";

//method to change daata
  void changeData(String newdata) {
    data = newdata;
    notifyListeners(); //notify all widgets for change
  }
}
