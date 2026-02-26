import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTab = [
      Tab(text: "Tab 1"),
      Tab(text: "Tab 2"),
      Tab(text: "Tab 3"),
    ];
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Widget"),
            bottom: TabBar(
              labelColor: Colors.deepOrange,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: Colors.black,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
              indicator: BoxDecoration(
                // color: Colors.amber,
                // borderRadius: BorderRadius.circular(50),
                border: Border(
                  bottom: BorderSide(color: Colors.deepOrange, width: 5),
                ),
              ),

              tabs: myTab,
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Tab 1", style: TextStyle(fontSize: 40))),
              Center(child: Text("Tab 2", style: TextStyle(fontSize: 40))),
              Center(child: Text("Tab 3", style: TextStyle(fontSize: 40))),
            ],
          ),
        ),
      ),
    );
  }
}
