import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("Ini isi row 1"),
        Text("Ini isi row 2"),
        Text("Ini isi row 3"),
      ],
    );
  }
}