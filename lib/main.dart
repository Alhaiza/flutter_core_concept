import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List Tile")),
        body: ListView(
          children: [
            // Biar kayak Whatsapp/Aplikasi Chat lain
            ListTile(
              contentPadding: EdgeInsets.all(10),
              title: Text("Syarif Muhammad Alhaiza"),
              subtitle: Text(
                "Selamat Pagishfheqfheqbvjebjbvjkebgjbekjbgjebqfbdbgjdbgjbdjgbjdgbjdgbjbgdjbfsbjfbjsbsbbgjbjbjgbjbgjbdjgb",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text("04:20 PM"),
              tileColor: Colors.amber,
              dense: true,
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Syarif Muhammad Alhaiza"),
              subtitle: Text("Selamat Pagi"),
              leading: CircleAvatar(),
              trailing: Text("04:20 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Syarif Muhammad Alhaiza"),
              subtitle: Text("Selamat Pagi"),
              leading: CircleAvatar(),
              trailing: Text("04:20 PM"),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text("Syarif Muhammad Alhaiza"),
              subtitle: Text("Selamat Pagi"),
              leading: CircleAvatar(),
              trailing: Text("04:20 PM"),
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
