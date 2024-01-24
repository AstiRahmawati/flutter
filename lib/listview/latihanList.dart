import 'package:flutter/material.dart';

class PemainPersib extends StatelessWidget {
final List<String> pemainPersib = ['febri', 'ciro', 'atep', 'kevin'];
final List<String> artikelPersib = [
    'Febri Hariyadi atau biasa dipanggil Febri',
    'Ciro Henrique berlabuh di PERSIB',
    'Atep adalah pemain sepak bola Indonesia.',
    'Kevin van Kippersluis bergabung di Persib.',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
             image: DecorationImage(
                  image: 
                    NetworkImage("https://1.bp.blogspot.com/-7g_rWfkLVvc/Xoi_dBaHjFI/AAAAAAABEHI/wJl2Se7j9UUaOmApy8I-7osa1c6PMkHigCKgBGAsYHg/s1600/skuat-persib-bandung-2020.JPG"),
                    fit: BoxFit.fill),
              ),
            ), 
            SizedBox(
              height: 430,
              child: ListView.builder(
                itemCount: pemainPersib.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) => Container(
                  height: 100,
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: 
                        NetworkImage("https://awsimages.detik.net.id/community/media/visual/2023/01/05/ilustrasi-persib-2_169.png?w=1200")
                        ),
                      Text(
                        '${artikelPersib[index]}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black),
                      )
                    ],
                  )),
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: pemainPersib.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Image(
                        image: 
                        NetworkImage("https://tse2.mm.bing.net/th?id=OIP.exzQ8FwoL9OQtT2CFyP49wHaD7&pid=Api&P=0&h=180")
                        ),
                    ),
                    color: Colors.cyanAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}