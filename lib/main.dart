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
        // Ini kalau Pakai Collumn (Kalau mau liat versi non collumn liat commit basic widget)
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(width: 200, height: 50, color: Color(0xffA2CB8B)),
            Container(width: 50, height: 50, color: Color(0xffC00707)),
            Container(width: 100, height: 50, color: Color(0xffFFAA00)),
            Container(width: 300, height: 50, color: Color(0xff7AAACE)),
          ],
        ),
      ),
    );
  }
}
