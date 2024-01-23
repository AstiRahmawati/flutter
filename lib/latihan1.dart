import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Ant-Man"),
                FlutterLogo(size: 50,)
              ],
            ),
            Column(
              children: [
                Text("Black Widow"),
                FlutterLogo(size: 50,)
              ],
            ),
            
          ],
        ),
        FlutterLogo(size: 50,),
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Captain-Amerika"),
                FlutterLogo(size: 50,)
              ],
            ),
            Column(
              children: [
                Text("Captain-Marvel"),
                FlutterLogo(size: 50,)
              ],
            )
            
          ],
        )
      ],
    );
  }
}