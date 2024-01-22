import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
  const BelajarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.orange],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.yellow, Colors.red],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: 
          NetworkImage("https://o-cdn-cas.sirclocdn.com/parenting/images/Nama_Kucing.width-800.format-webp.webp"),
          fit: BoxFit.fill),
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      ),
      ),
      ),
    );
  }
}