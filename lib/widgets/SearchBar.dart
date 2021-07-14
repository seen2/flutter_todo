import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.changeDataLength,
  }) : super(key: key);

  final Function changeDataLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: TextField(
          onSubmitted: (value) {
            if (value.isNotEmpty) changeDataLength(int.parse(value));
          },
          // onChanged: (value) {
          //   if (value.isNotEmpty) lengthValue=int.parse(value);
          // },
          maxLength: 3,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: 'Enter number of contacts to fetch',
          ),
        ),
      ),
    );
  }
}
