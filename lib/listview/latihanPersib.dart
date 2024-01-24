import 'package:flutter/material.dart';

class ListItem {
  final String imageUrl;
  final String aritikel;
  final String text;
  final String gallery;

  ListItem(this.imageUrl, this.aritikel, this.text, this.gallery);
}

class LatihanPersib extends StatelessWidget {
  LatihanPersib({super.key});

  final List<ListItem> itemList = [
    ListItem("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/43/2023/12/19/persib_bali_18122023_sut_6767b5753e-3053497031.jpg", "Turnamen Persib", "persib", "https://1.bp.blogspot.com/-7g_rWfkLVvc/Xoi_dBaHjFI/AAAAAAABEHI/wJl2Se7j9UUaOmApy8I-7osa1c6PMkHigCKgBGAsYHg/s1600/skuat-persib-bandung-2020.JPG"),
    ListItem("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/43/2023/12/19/persib_bali_18122023_sut_6767b5753e-3053497031.jpg", "Pemain Persib", "persib", "https://tse2.mm.bing.net/th?id=OIP.exzQ8FwoL9OQtT2CFyP49wHaD7&pid=Api&P=0&h=180"),
    ListItem("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/43/2023/12/19/persib_bali_18122023_sut_6767b5753e-3053497031.jpg", "PERSIB", "persib", "https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/43/2023/12/19/persib_bali_18122023_sut_6767b5753e-3053497031.jpg"),
    ListItem("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/43/2023/12/19/persib_bali_18122023_sut_6767b5753e-3053497031.jpg", "Turnamen Persib", "persib", "https://tse2.mm.bing.net/th?id=OIP.exzQ8FwoL9OQtT2CFyP49wHaD7&pid=Api&P=0&h=180"),
    ListItem("https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/p1/43/2023/12/19/persib_bali_18122023_sut_6767b5753e-3053497031.jpg", "Pemain Persib", "persib", "https://1.bp.blogspot.com/-7g_rWfkLVvc/Xoi_dBaHjFI/AAAAAAABEHI/wJl2Se7j9UUaOmApy8I-7osa1c6PMkHigCKgBGAsYHg/s1600/skuat-persib-bandung-2020.JPG"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://awsimages.detik.net.id/community/media/visual/2023/01/05/ilustrasi-persib-2_169.png?w=1200"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 151, 214),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.separated(
                  itemCount: itemList.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.white,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        height: 100,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 100,
                              height: 90,
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      itemList[index].imageUrl
                                      ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 100, // Adjust the width as needed
                                  child: Text(
                                    itemList[index].aritikel,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ));
                  },
                ),
              ),
            ],
          ),
          Center(child: Text("GALERI")),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                 itemList[index].gallery
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}