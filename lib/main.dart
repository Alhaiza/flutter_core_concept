import 'package:flutter/material.dart';

// Main Class
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Gunakan List untuk menyimpan data (jika ada)
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  final List<Widget> myList = List.generate(
    100,
    (index) => Text(
      "${index + 1}",
      style: TextStyle(fontSize: 20 + double.parse(index.toString())),
    ),
  );

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
        appBar: AppBar(title: Text("List View")),
        // Generate dari myList
        body: ListView(children: myList),
        // Bagian Utama Aplikasi
        // Ini kalau Pakai List agar bisa scrollable (Kalau mau liat versi non collumn liat commit basic widget)
        // Pakai separeted buat misahin per List
        // body: ListView.separated(
        //   separatorBuilder: (context, index) {
        //     // Pakai Divider
        //     return Divider(color: Colors.black);
        //     // Pakai ini misahin secara eksplisit
        //     // return Container(height: 10, color: Colors.black);
        //   },
        //   itemCount: myColor.length,
        //   // Pakai Builder buat looping
        //   itemBuilder: (contex, index) {
        //     return Container(width: 300, height: 300, color: myColor[index]);
        //   },
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: CrossAxisAlignment.end,
        //   // Ubah arah scroll pakai scrollDirection: Axis.horizontal
        //   // scrollDirection: Axis.horizontal,
        //   // children: myList,
        // ),
      ),
    );
  }
}
