import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:todo/widgets/ContactList.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  List? users;
  int dataLength = 9;
  bool loading = false;

  changeDataLength(int? value) {
    setState(() {
      dataLength = value ?? 9;
      loadData();
    });
  }

  loadData() async {
    try {
      setState(() {
        loading = true;
      });
      var url = Uri.https(
          'www.randomuser.me', '/api', {'results': dataLength.toString()});

      // Await the http get response, then decode the json-formatted response.
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse =
            convert.jsonDecode(response.body) as Map<String, dynamic>;
        // var itemCount = jsonResponse['totalItems'];
        // print(jsonResponse["results"]);
        setState(() {
          users = jsonResponse["results"];
        });
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {} finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(users);
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: loading
            ? Center(child: CircularProgressIndicator())
            : ContactList(users: users, changeDataLength: changeDataLength),
      ),
    ));
  }
}
