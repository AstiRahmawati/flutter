import 'package:flutter/material.dart';
class Latihan3 extends StatelessWidget {
  const Latihan3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
      image: DecorationImage(
      image: 
      NetworkImage("https://awsimages.detik.net.id/community/media/visual/2023/01/05/ilustrasi-persib-2_169.png?w=1200"),
      fit: BoxFit.fill),
      ),
          ),
          Container(
            width: double.infinity,
            height: 185,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
           color: Color.fromARGB(255, 127, 158, 184),
        ),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 150,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
              image: DecorationImage(
              image: 
              NetworkImage("https://1.bp.blogspot.com/-7g_rWfkLVvc/Xoi_dBaHjFI/AAAAAAABEHI/wJl2Se7j9UUaOmApy8I-7osa1c6PMkHigCKgBGAsYHg/s1600/skuat-persib-bandung-2020.JPG"),
              fit: BoxFit.fill),
              gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
        ),
              ),
      ),
      Container (
        width: 200,
        height: 100,
        child: Text("PERSIB adalah klub sepak bola profesional Indonesia yang berbasis di Kota Bandung, Jawa Barat . Klub ini dibentuk pada 5 Januari 1919 dengan nama Bandoeng Inlandsche Voetbal Bond. Saat ini persib bermain di Liga 1 Indonesia dengan julukan terkenal klub ini Maung Bandung dan Pangeran Biru", 
        textAlign: TextAlign.right, style: TextStyle(color: Colors.black, fontSize: 10),),
      ),
          ],
        ),
          ),
          Text(
            "Galeri"
          ),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: 
                  NetworkImage("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/43/2023/12/19/persib_bali_18122023_sut_6767b5753e-3053497031.jpg"),
                  fit: BoxFit.fill),
                ),
              ),
              Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: 
                  NetworkImage("https://tse2.mm.bing.net/th?id=OIP.exzQ8FwoL9OQtT2CFyP49wHaD7&pid=Api&P=0&h=180"),
                  fit: BoxFit.fill),
                ),
              ),
              Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: 
                  NetworkImage("https://1.bp.blogspot.com/-7g_rWfkLVvc/Xoi_dBaHjFI/AAAAAAABEHI/wJl2Se7j9UUaOmApy8I-7osa1c6PMkHigCKgBGAsYHg/s1600/skuat-persib-bandung-2020.JPG"),
                  fit: BoxFit.fill),
                ),
              ),
          ],
          )
        ],
      ),
    );
  }
}
