import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<bool> isBig = [false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: ElevatedButton(
          onPressed: () {},
          child: const Text(
            "search                                                                ",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              side: BorderSide(color: Colors.white),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return isBig[Random().nextInt(isBig.length)]
              ? Row(
                  children: [
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: Column(
                        children: [
                          Container(
                            height: 125,
                            width: MediaQuery.of(context).size.width * 0.33,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 10}"),
                              ),
                            ),
                          ),
                          Container(
                            height: 125,
                            width: MediaQuery.of(context).size.width * 0.33,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 2}"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.66,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 125,
                                width: MediaQuery.of(context).size.width * 0.33,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 3}"),
                                  ),
                                ),
                              ),
                              Container(
                                height: 125,
                                width: MediaQuery.of(context).size.width * 0.33,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 11}"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 125,
                                width: MediaQuery.of(context).size.width * 0.33,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 12}"),
                                  ),
                                ),
                              ),
                              Container(
                                height: 125,
                                width: MediaQuery.of(context).size.width * 0.33,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${index + 13}"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    isBig[Random().nextInt(isBig.length)]
                        ? Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width * 0.66,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 125,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://source.unsplash.com/random/${index + 14}"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 125,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://source.unsplash.com/random/${index + 15}"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 125,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://source.unsplash.com/random/${index + 17}"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 125,
                                      width: MediaQuery.of(context).size.width *
                                          0.33,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://source.unsplash.com/random/${index + 16}"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Container(
                            height: 250,
                            width: MediaQuery.of(context).size.width * 0.66,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 19}"),
                              ),
                            ),
                          ),
                    Container(
                      height: 250,
                      width: MediaQuery.of(context).size.width * 0.33,
                      child: Column(
                        children: [
                          Container(
                            height: 125,
                            width: MediaQuery.of(context).size.width * 0.33,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 20}"),
                              ),
                            ),
                          ),
                          Container(
                            height: 125,
                            width: MediaQuery.of(context).size.width * 0.33,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 100}"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
