import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text("Home"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            )),
        drawer: Drawer(),
        body: Container(
          child: Center(child: Text("Welcome To Home Screen")),
        ),
        bottomNavigationBar: DefaultTabController(
          length: 4,
          child: Container(
            color: Colors.deepPurple,
            child: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  text: "Transactions",
                  icon: Icon(Icons.euro_symbol),
                ),
                Tab(
                  text: "Bills",
                  icon: Icon(Icons.assignment),
                ),
                Tab(
                  text: "Balance",
                  icon: Icon(Icons.account_balance_wallet),
                ),
                Tab(
                  text: "Options",
                  icon: Icon(Icons.settings),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
