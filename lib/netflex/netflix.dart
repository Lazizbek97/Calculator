import 'dart:math';

import 'package:flutter/material.dart';

class Netflix extends StatefulWidget {
  @override
  State<Netflix> createState() => _Netflix();
}

class _Netflix extends State<Netflix> {
  List<String> names = [
    'Red\n Notice',
    'Bird \nBox',
    'The \nIrishman',
    'The Kissing\n Booth 2',
    '6 \nUnderground',
    'Spenser \nConfidential',
    'The Old\n Guard',
    'Murder\n Mystery',
    'Blood\n Red Sky',
    'The \nPlatform'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        (index == 0) ? asosiyFon() : janrgaKora(2),
                        (index == 0) ? temalar() : janrgaKora(2),
                        (index == 0) ? oxirgiKorilganlar() : janrgaKora(2),

                        // (index > 3) ? janrgaKora(2) : Text(""),
                        // (index > 4) ? janrgaKora(2) : Text(""),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        // itemExtent: 1000,
      ),
    );
  }

  oxirgiKorilganlar() => Expanded(
      flex: 2,
      child: Stack(
        children: [
          Expanded(
            child: Container(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.16,
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.7,
                                      child: Image.network(
                                        "https://source.unsplash.com/random/${index + 20}",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        top: 28,
                                        left: 27,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_circle_outline,
                                              size: 50,
                                            )))
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.info_outline),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert_outlined),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })),
          )
        ],
      ));

  janrgaKora(int flexi) => Container(
      margin: EdgeInsets.all(3),
      height: MediaQuery.of(context).size.width * 0.6,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(15),
              child: Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.width * 0.8,
                    child: Image.network(
                      "https://source.unsplash.com/random/$index",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: 75,
                      left: 70,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.play_circle_outline,
                            size: 50,
                          )))
                ],
              ),
            );
          }));

  temalar() => Expanded(
        flex: 2,
        child: Stack(
          children: [
            Container(
              // padding: EdgeInsets.all(0),
              margin: EdgeInsets.only(top: 25),
              // color: Colors.amberAccent,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                "https://source.unsplash.com/random/${index + 100}"),
                            // backgroundColor: Colors.black54,
                          ),
                          Positioned(
                              top: 70,
                              left: 15,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  "${names[randomFunc()]}",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ],
                      ),
                    );
                  }),
            ),
            const Positioned(
              top: 0,
              child: Text(
                "Previews",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );

  asosiyFon() => Expanded(
        flex: 6,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                "assets/images/main_image.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 18,
              left: 10,
              child: Image.asset(
                "assets/images/logo_netflix.png",
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.13,
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.6,
              top: 32,
              left: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "TV Shows",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Text(
                    "My list",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.35,
              left: MediaQuery.of(context).size.width * 0.3,
              child: const Text(
                "Stranger\n Things",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.6,
              top: MediaQuery.of(context).size.height * 0.48,
              left: MediaQuery.of(context).size.width * 0.21,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "TV Shows",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  Text(
                    "Movies",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  Text(
                    "My list",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.51,
                left: MediaQuery.of(context).size.width * 0.43,
                child: TextButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white)),
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Play",
                      style: TextStyle(color: Colors.black),
                    ))),
            Positioned(
              width: MediaQuery.of(context).size.width * 0.6,
              top: MediaQuery.of(context).size.height * 0.53,
              left: MediaQuery.of(context).size.width * 0.21,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [Icon(Icons.check), Text("My List")],
                    ),
                    Column(
                      children: const [Icon(Icons.info), Text("Info")],
                    ),
                  ]),
            ),
          ],
        ),
      );

  randomFunc() {
    int a = Random().nextInt(names.length);
    return a;
  }
}
