import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Dynamic Apps")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 20 + double.parse(counter.toString())),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Elevetd button tuh buat tombol yang manggil yang bisa ngerubah sesuatu
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    print(counter);
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counter != 1) {
                        counter--;
                      }
                    });
                    print(counter);
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
