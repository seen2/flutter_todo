import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book_solid), label: "Articles"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.eye_solid), label: "Views"),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) => CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              // ignore: dead_code
              middle: true ? Text("Screen" + (1 + index).toString()) : null,
            ),
            child: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Screen" + (1 + index).toString(),
                      style: CupertinoTheme.of(context)
                          .textTheme
                          .navLargeTitleTextStyle,
                    ),
                    CupertinoButton(
                      child: Text("Press"),
                      onPressed: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) {
                            return DetailsScree(
                                topic: (index == 0 ? "Articles" : "Views"));
                          },
                        ));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class DetailsScree extends StatefulWidget {
  final String topic;

  const DetailsScree({Key? key, required this.topic}) : super(key: key);

  @override
  _DetailsScreeState createState() => _DetailsScreeState();
}

class _DetailsScreeState extends State<DetailsScree> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Detail"),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        " A Switch",
                      ),
                    ),
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (value) {
                        setState(() => switchValue = value);
                      },
                    )
                  ],
                ),
                CupertinoButton(
                  child: Text("Lunch Action Sheet"),
                  onPressed: () {
                    showCupertinoModalPopup<int>(
                      context: context,
                      builder: (context) {
                        return CupertinoActionSheet(
                          title: Text("Some choices"),
                          actions: [
                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context, 1);
                              },
                              isDefaultAction: true,
                              child: Text("One"),
                            ),
                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context, 2);
                              },
                              child: Text("Two"),
                            ),
                            CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context, 3);
                              },
                              child: Text("Three"),
                            )
                          ],
                        );
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}
