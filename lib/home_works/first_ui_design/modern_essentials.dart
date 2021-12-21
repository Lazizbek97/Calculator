import 'dart:convert';

import 'package:flutter/material.dart';

class Modern_essentials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://source.unsplash.com/random"),
                ),
              ),
              child: Container(
                alignment: Alignment(0.9, -0.8),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
          Container(
            padding: EdgeInsets.fromLTRB(25, 20, 25, 100),
            decoration: BoxDecoration(
              color: Colors.brown.shade50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Exceptional Modern Clothings",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 2,
                  endIndent: 300,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Shop for exceptional modern clothings for your everyday life",
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Text Button"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade700,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                      side: BorderSide(style: BorderStyle.none),
                      shadowColor: Colors.black,
                      elevation: 15),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade300,
                        maxRadius: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade500,
                        maxRadius: 6,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade300,
                        maxRadius: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade300,
                        maxRadius: 4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
