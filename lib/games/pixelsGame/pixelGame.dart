// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class PixelGame extends StatefulWidget {
  const PixelGame({Key? key}) : super(key: key);

  @override
  _PixelGameState createState() => _PixelGameState();
}

class _PixelGameState extends State<PixelGame> {
  double firstGamer = 0.5;
  double secondGamer = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              firstGamer += 0.05;
              secondGamer -= 0.05;
              print(firstGamer);
              print(secondGamer);

              setState(() {});
              if (firstGamer >= 1.0) {
                awesomDialog("Yellow won");
              }
            },
            hoverColor: Colors.blueAccent,
            child: Container(
              height: MediaQuery.of(context).size.height * firstGamer,
              color: Colors.amberAccent,
            ),
          ),
          InkWell(
            onTap: () {
              firstGamer -= 0.05;
              secondGamer += 0.05;
              setState(() {});
              if (secondGamer >= 1.0) {
                awesomDialog("Green won");
              }
            },
            child: Container(
              height: MediaQuery.of(context).size.height * secondGamer,
              color: Colors.teal,
            ),
          )
        ],
      ),
    );
  }

  awesomDialog(String text) => AwesomeDialog(
        dismissOnBackKeyPress: false,
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.BOTTOMSLIDE,
        title: '$text',
        desc: 'Thank you for your attemts',
        btnOkOnPress: () {
          firstGamer = 0.5;
          secondGamer = 0.5;

          setState(() {});
        },
      )..show();
}
