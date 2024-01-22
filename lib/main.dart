import 'package:belajar/container_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ini project flutter pertamaku",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: Text(
            "Belajar Flutter",
            style: TextStyle(backgroundColor: Colors.white),
            ),
        ),
        body: BelajarContainer(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hallo Dunia \nHallo Asti \nHallo Fitri",
        style: TextStyle(
          color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      );
  }
}