import 'package:flutter/material.dart';
import 'package:todo/widgets/ContactCard.dart';
import 'package:todo/widgets/SearchBar.dart';

class ContactList extends StatelessWidget {
  const ContactList(
      {Key? key, required this.users, required this.changeDataLength})
      : super(key: key);

  final List? users;
  final changeDataLength;
  // int lengthValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SearchBar(changeDataLength: changeDataLength),
          new Container(
            child: Expanded(
              child: ContactCard(users: users),
            ),
          ),
        ],
      ),
    );
  }
}
