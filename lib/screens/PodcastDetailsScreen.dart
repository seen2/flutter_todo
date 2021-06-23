import 'package:flutter/material.dart';

class PodcastDetailsScreen extends StatelessWidget {
  const PodcastDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Container(
            child: Text("Podcast Detail Screen"),
          ),
        ),
      ),
    );
  }
}
