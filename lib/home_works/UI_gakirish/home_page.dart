import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        elevation: 15, // appBarni tagidagi soya uchun
        titleSpacing: 30.0, // titleni chapdan o'ngga surib beradi
        iconTheme: const IconThemeData(
          // appBardagi iconlarni rangini o'zgartirarkanmiz
          color: Colors.blueGrey,
          opacity:
              0.9, //opacity 0-1 oraliqda bo'ladi 0ga yaqinlashsa ko'rinmay ketaveradi
          size: 30, // iconlarning o'lchami
        ),
        leading: const Icon(
          Icons
              .account_balance, // leading: chap tarafdan iconga o'xshagan narsalar qo'shib beradi
        ),
        actions: const [
          Icon(Icons.menu),
        ], // actions o'ng tarafdan icon qoshib beradi
        title: const Text(
          "Beeline", // appBar uchun title
          style: TextStyle(
            color: Colors.black,
            fontFamily: "sanserif",
            decoration:
                TextDecoration.none, // textni tashqi ko'rinishini o'zgartiriadi
            letterSpacing: 1,
            shadows: [
              Shadow(
                color: Colors.black,
                blurRadius: 1,
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
