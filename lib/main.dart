import 'package:flutter/material.dart';

// Main Class
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget Dasar
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold = Pembungkus/Container Aplikasi
      home: Scaffold(
        // backgroundColor = Wanra Background. bisa pakai Color untuk hex bisa pakai Colors buat warna yg udah disediakan
        // backgroundColor: Color(0xffC7EABB),
        // AppBar = Header Aplikasi
        appBar: AppBar(title: Text("My Apps")),
        // Bagian Utama Aplikasi
        body: Center(
          child: Text(
            "Hello World",
            // maxLines = batas line
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            // textAlign = posisi text
            textAlign: TextAlign.center,
            // Memberi Styling pada Font
            style: TextStyle(
              backgroundColor: Colors.amber,
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
              // Harus ditambah di pubspec.yaml
              fontFamily: 'Poppins',
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationThickness: 5,
            ),
          ),
        ),
      ),
    );
  }
}
