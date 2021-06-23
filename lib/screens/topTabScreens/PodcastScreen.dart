import 'package:flutter/material.dart';
import 'package:todo/util/AppRoutes.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 160,
        ),
        Text("Podcast Screen"),
        ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.podcastDetailsRoute),
            child: Text("Podcast Details"))
      ],
    );
  }
}
