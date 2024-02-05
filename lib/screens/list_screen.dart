import 'package:belajar/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helpers.dart';

class ListGalaxyScreen extends StatelessWidget {
  final List<Map<String, dynamic>> galaxyData = [
    {
      "kategori": "Galaxy",
      "nama": "Bima Sakti",
      "image": "images/bima-sakti.png",
      "desc": "Bima Sakti adalah gugusan bintang yang beribu-ribu banyaknya sehingga terlihat seperti lajur cahaya di langit. Bima Sakti juga dapat diartikan sebagai galaksi yang didalamnya terdapat Tata Surya dengan matahari dan planet-planet yang mengitarinya. Bima Sakti memiliki ciri Berbentuk spiral menyerupai jalan. Memiliki bentuk yang mirip dengan cakram. Memiliki warna yang menyerupai warna susu. Memiliki 200 miliar – 400 miliar bintang."
    },
    {
      "kategori": "Galaxy",
      "nama": "Andromeda",
      "image": "images/andromeda.jpg",
      "desc": "Galaksi Andromeda (nama lain, Messier 31 dan NGC 224) adalah sebuah galaksi spiral yang berjarak kira-kira 2,5 juta tahun cahaya dari bumi. Galaksi ini merupakan salah satu galaksi di luar galaksi Bima Sakti yang dapat dilihat dengan mata telanjang pada malam yang cerah, tanpa bulan, dan tanpa polusi cahaya. Andromeda masih berbentuk sebuah gas hidrogen yang berukuran sangat besar. Hidrogen tersebut lalu terus berotasi dan memiliki gaya berat sehingga mengalami kontraksi dan berbentuk bulat."
    },
    {
      "kategori": "Galaxy",
      "nama": "Sombrero",
      "image": "images/sombrero.jpg",
      "desc": "Bentuk galaksi Sombrero ini adalah spiral dan terlihat seperti topi sombrero, maka dari itu dinamakan demikian. Nama lain dari Galaksi Sombrero ini adalah Messier 104 (M104), yang terletak di sekitar 28 juta tahun cahaya dari galaksi kita. Inti pada galaksi ini sangat cerah, yakni pada pusat tonjolannya yang besar dan di bagian tengah dikelilingi debut. Pada tonjolan besar tersebut diperkirakan sebagai pusat lubang hitam supermasif, sementara jalur debunya sangat menarik perhatian para astronom profesional."
    },
    {
      "kategori": "Galaxy",
      "nama": "The Rose",
      "image": "images/the-rose.jpg",
      "desc": "Galaksi The Rose ini disebut demikian sebab bentuknya seperti bunga mawar dan berada di rasi bintang Andromeda. Sebenarnya, galaksi The Rose ini terdiri dari 2 galaksi yakni UGC 1810 dan UGC 1813. Pada UGC 1810 ini berukuran besar dan memiliki cakram yang membentuk menyerupai bunga mawar."
    },
    {
      "kategori": "Galaxy",
      "nama": "Sculptor",
      "image": "images/sculptor.jpg",
      "desc": "Terletak di rasi bintang Sculptor selatan dengan jarak sekitar 8 juta tahun cahaya. Dalam Galaksi Sculptor ini memiliki banyak debu, bahkan selur-selur debunya kerap terlihat naik dari piringan galaksinya."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/ungu.webp"),
            fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: galaxyData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailGalaxyScreen(
                              nama: galaxyData[index]["nama"],
                              kategori: galaxyData[index]["kategori"],
                              image: galaxyData[index]["image"],
                              desc: galaxyData[index]["desc"]),
                              ),
                            );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${galaxyData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Text(
                  "${galaxyData[index]["nama"]} - ${galaxyData[index]["kategori"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}