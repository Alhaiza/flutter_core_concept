import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<Map<String, Object>> myList = [
    {
      "name": "Sandika",
      "age": 23,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
      ],
    },
    {
      "name": "Ucup",
      "age": 23,
      "favColor": ["White", "Red", "Green"],
    },
    {
      "name": "Andre",
      "age": 23,
      "favColor": [
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
      ],
    },
    {
      "name": "Andre",
      "age": 23,
      "favColor": [
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
      ],
    },
    {
      "name": "Andre",
      "age": 23,
      "favColor": [
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
      ],
    },
    {
      "name": "Andre",
      "age": 23,
      "favColor": [
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
        "White",
        "Red",
        "Green",
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ID App")),
        body: ListView(
          // Children nya dijadiin mappingan
          children: myList.map((data) {
            final List<String> myFavColor = data['favColor'] as List<String>;
            return Card(
              margin: EdgeInsets.all(20),
              color: Colors.blueGrey,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['name']}"),
                            Text("Age: ${data['age']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myFavColor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 8,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
