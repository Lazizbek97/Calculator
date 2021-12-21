import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bayroqlar"),
        backgroundColor: Colors.amberAccent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 250,
            width: 400,
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 200,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // height: 30,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 2,
            endIndent: 100.0,
            indent: 100.0,
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 250,
            width: 400,
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 200,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    // height: 30,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 30,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ikkinchiUIuchun() => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 80,
                  color: Colors.blueAccent,
                ),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 250,
                  height: 100,
                  color: Colors.cyanAccent,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 250,
                  height: 100,
                  color: Colors.purpleAccent,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 250,
                  height: 100,
                  color: Colors.yellowAccent,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 100,
                  height: 100,
                  color: Colors.redAccent,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              )
            ],
          ),
        ],
      );
  uchunchiUIuchun() => Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: 150.0,
            width: 330,
            color: Colors.cyanAccent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                height: 70.0,
                width: 120,
                color: Colors.yellow,
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                height: 70.0,
                width: 120,
                color: Colors.yellow,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 150.0,
            width: 330,
            color: Colors.cyanAccent,
          ),
          const Text(
            "Hello nigalla !!!",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
          )
        ],
      );
  tortinchiUIuchun() => Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.all(25),
            // height: 50.0,
            color: Colors.yellow,
          )),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.all(25),
                height: 80,
                width: 130,
                color: Colors.teal.shade400,
              ),
              Text(
                "Ozroq text",
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.teal.shade400,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(25),
              // height: 100.0,
              color: Colors.yellow,
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                margin: EdgeInsets.all(25),
                height: 80,
                width: 130,
                color: Colors.teal.shade400,
              ),
              Text(
                "Ozroq text",
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.teal.shade400,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      );
  shaxmatUIuchun() => Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.white,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      );
}
