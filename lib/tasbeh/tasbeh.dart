import 'package:flutter/material.dart';

class Tasbeh extends StatefulWidget {
  @override
  State<Tasbeh> createState() => _Tasbeh();
}

class _Tasbeh extends State<Tasbeh> {
  int _count = 0;
  List<String> zikrlar = [
    "Subhanalloh",
    "Alhamdulillah",
    "La ilaha illalloh",
    "Allohu akbar",
  ];
  int zikr_no = 0;
  int max_zikr = 33;
  bool is_audo_on = false;
  bool is_dark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 60,
        title: const Text(
          "Tasbeh",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.shade200,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          size: 35,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_sharp,
                size: 35,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.orange[100],
            height: 200,
            width: double.infinity,
            child: Image.network(
              "https://thumbs.gfycat.com/GrippingInsidiousKatydid-max-1mb.gif",
              // fit: BoxFit.cover,
            ),
          ),
          Container(
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 30),
              width: MediaQuery.of(context).size.width * 0.7,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "${zikrlar[zikr_no]}",
                  style: TextStyle(fontSize: 40),
                ),
              )),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: MediaQuery.of(context).size.width * 0.13,
                width: MediaQuery.of(context).size.width * 0.13,
                // alignment: Alignment.center,
                color: Colors.orange[100],
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_suggest,
                    size: 50,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 0, 2, 2),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.13,
                width: MediaQuery.of(context).size.width * 0.13,
                // alignment: Alignment.center,
                color: Colors.orange[100],
                child: IconButton(
                  onPressed: () {
                    _count = 0;
                    zikr_no = 0;
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.change_circle_outlined,
                    size: 50,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 0, 2, 2),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.13,
                width: MediaQuery.of(context).size.width * 0.13,
                // alignment: Alignment.center,
                color: Colors.orange[100],
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 2, 2),
                  onPressed: () {
                    is_audo_on ? is_audo_on = false : is_audo_on = true;
                    setState(() {});
                  },
                  icon: sount_regulate(),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width * 0.13,
                width: MediaQuery.of(context).size.width * 0.13,
                // alignment: Alignment.center,
                color: Colors.orange[100],
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 2, 2),
                  onPressed: () {
                    is_dark ? is_dark = false : is_dark = true;
                    setState(() {});
                  },
                  icon: change_mode(),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundColor: Colors.orange.shade700,
              radius: 25,
              child: IconButton(
                onPressed: () {
                  if (max_zikr == 33) {
                    max_zikr = 99;
                    setState(() {});
                  } else {
                    max_zikr = 33;
                    setState(() {});
                  }
                },
                icon: Text(
                  "$max_zikr",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.width * 0.6,
        width: MediaQuery.of(context).size.width * 0.6,
        margin: EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(
          backgroundColor: Colors.orange.shade300,
          onPressed: () {
            if (_count < max_zikr) {
              increase();
            } else {
              _count = 0;
              if (zikr_no < 3) {
                zikr_no += 1;
              } else {
                zikr_no = 0;
                zikr_no += 1;
              }
              ;
              increase();
            }
          },
          child: Text(
            "$_count",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  increase() {
    _count += 1;
    setState(() {});
  }

  sount_regulate() {
    if (is_audo_on) {
      return const Icon(
        Icons.volume_up,
        size: 50,
      );
    } else {
      return const Icon(
        Icons.volume_off,
        size: 50,
      );
    }
  }

  change_mode() {
    if (is_dark) {
      return const Icon(
        Icons.light_mode_outlined,
        size: 50,
      );
    } else {
      return const Icon(
        Icons.dark_mode_outlined,
        size: 50,
      );
    }
  }
}
