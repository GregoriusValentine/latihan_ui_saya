import 'package:flutter/material.dart';

class LatihanUI extends StatefulWidget {
  const LatihanUI({super.key});

  @override
  State<LatihanUI> createState() => _LatihanUiState();
}

class _LatihanUiState extends State<LatihanUI> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: 
      Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(child: Container(
                  height: 500,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/luffy.jpg')
                            )
                          ),
                          height: 450,
                        )
                      ),
                      Positioned(
                        bottom: 0,
                        right: 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/entin.jpg'),
                          radius: 50,
                        )
                      ),
                      Positioned(
                        top: h * 0.1, // Menggunakan 10% dari tinggi layar
                        left: 0, // Posisi awal di kiri 0
                        right: 0, // Posisi awal di kanan 0
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Mengatur ikon ke ujung kiri dan kanan
                            children: [
                              // Menambahkan margin di kiri 5%
                              Container(
                                margin: EdgeInsets.only(left: w * 0.05), // 5% margin kiri
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                  size: w * 0.05, // Ukuran ikon responsif
                                ),
                              ),
                              // Menambahkan margin di kanan 5%
                              Container(
                                margin: EdgeInsets.only(right: w * 0.05), // 5% margin kanan
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                  size: w * 0.05, // Ukuran ikon responsif
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bajak Laut Topi Jerami - One Piece',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Tidak peduli seberapa sulit atau mustahilnya, jangan pernah melupakan tujuanmu - Luffy",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade600
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('34', Icons.upload),
                  rowIconText('20', Icons.message),
                  rowIconText('20', Icons.face),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              child: Container(
                child: Text(
                  "Bajak Laut Topi Jerami, juga dikenal sebagai Bajak Laut Mugiwara, Kru Topi Jerami atau singkatnya Topi Jerami, adalah kelompok yang terkenal dan kuat Bajak Laut yang berasal dari East Blue. 'Topi Jerami' dinamai menurut tanda tangan Luffy topi yang diberikan kepadanya oleh 'Red-Haired' Shanks dan merupakan pertama kali disebut sebagai Bajak Laut Topi Jerami oleh Smoker di Kerajaan Alabasta. Para kru berlayar dengan Going Merry, kapal Topi Jerami resmi pertama mereka, hingga Arc Water 7. Selama Arc Post-Enies Lobby, Franky dan Iceburg membuatkan mereka sebuah kapal baru yang diberi nama Thousand Sunny oleh Iceburg, meskipun para anggota memperebutkan nama yang berbeda.",
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
      ), 
    );
  }
  Widget rowIconText(String text, IconData icon){
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(icon)
      ],
    );
  }
}