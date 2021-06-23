import 'package:flutter/material.dart';

import 'AlbusmScreen.dart';
import 'MusicLibraryScreen.dart';
import 'PodcastScreen.dart';

class IndexTopTab extends StatelessWidget {
  const IndexTopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Scaffold(
            appBar: AppBar(
                toolbarHeight: 80,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.podcasts),
                      text: "PODCAST",
                    ),
                    Tab(
                      icon: Icon(Icons.library_music),
                      text: "LIBRARY",
                    ),
                    Tab(
                      icon: Icon(Icons.album),
                      text: "ALBUM",
                    ),
                  ],
                )),
            body: TabBarView(children: [
              PodcastScreen(),
              MusicLibraryScreen(),
              AlbumScreen(),
            ]),
          ),
        ));
  }
}
