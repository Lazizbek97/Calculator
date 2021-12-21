import 'dart:math';

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class QogozQaychiTosh extends StatefulWidget {
  QogozQaychiTosh({Key? key}) : super(key: key);

  @override
  _QogozQaychiToshState createState() => _QogozQaychiToshState();
}

class _QogozQaychiToshState extends State<QogozQaychiTosh> {
  int firstGamer = 1;
  int secondGamer = 1;

  List<String> gifs = [
    "assets/images/s1.png",
    "assets/images/p1.png",
    "assets/images/r1.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.green,
            child: Image.asset("${gifs[firstGamer]}"),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.blueAccent,
            child: Image.asset("${gifs[secondGamer]}"),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 160, 360),
        child: SizedBox(
          height: 80,
          width: 80,
          child: FloatingActionButton.extended(
            onPressed: () {
              firstGamer = Random().nextInt(3);
              secondGamer = Random().nextInt(3);
              setState(() {});

              showWinner(firstGamer, secondGamer);
            },
            label: const Icon(
              Icons.refresh,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }

  showWinner(int first, int second) {
    String winner = 'Start game!';
    if (first == second) {
      winner = "Draw!";
    } else if ((first == 0 && second == 1) || (second == 0 && first == 1)) {
      winner = "Scissor won!";
    } else if ((first == 0 && second == 2) || (second == 0 && first == 2)) {
      winner = "Rock won!";
    } else if ((first == 1 && second == 2) || (second == 1 && first == 2)) {
      winner = "Paper won!";
    }

    AwesomeDialog(
      context: context,
      dialogType: DialogType.SUCCES,
      animType: AnimType.BOTTOMSLIDE,
      title: '$winner',
      desc: 'Start game again!',
      btnOkOnPress: () {},
    ).show();
  }
}
