import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
   SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        leading: GestureDetector(
          child: Icon( Icons.arrow_back_ios, color: Colors.black,  ),
          onTap: () {
            Navigator.pop(context);
          } ,
        ) ,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini adalah halaman ke dua"),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
   ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini adalah halaman ketiga"),
            GestureDetector(
              onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: Colors.amber,
              child: Text("Back"),
            ),
            )
          ],
        ),
      ),
    );
  }
}

   