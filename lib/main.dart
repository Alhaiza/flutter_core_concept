import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Container(color: Colors.greenAccent),
          title: Container(width: 1000, height: 10, color: Colors.red),
          centerTitle: true,
          actions: [
            Container(height: 35, width: 35, color: Colors.purple),
            Container(height: 35, width: 35, color: Colors.yellow),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: Container(height: 150, width: 100, color: Colors.orange),
          ),
          flexibleSpace: Container(height: 350, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
