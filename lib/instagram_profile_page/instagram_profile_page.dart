// import 'package:awesome_dialog/awesome_dialog.dart';
import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.lock),
        title: Row(
          children: const [
            Text("fayziev.lazizbek"),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.star,
              color: Colors.blue,
            )
          ],
        ),
        actions: const [
          Icon(Icons.add_circle_outline_sharp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              flex: 7,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // margin: const EdgeInsets.only(top: 35),
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.red),
                              shape: BoxShape.circle),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://source.unsplash.com/random"),
                          ),
                        ),
                        Column(
                          children: const [
                            Text(
                              "100",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "3.4M",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "345",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Lazizbek Fayziev",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text(
                      "About me about me About me about me about me",
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Edit Profile"),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 125,
                              ),
                              primary: Colors.black,
                              side: const BorderSide(color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child:
                                const Icon(Icons.keyboard_arrow_down_outlined),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                              side: const BorderSide(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          // itemExtent: 80,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.red),
                                        shape: BoxShape.circle),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://source.unsplash.com/random/${index + 10}"),
                                    ),
                                  ),
                                  const Text(
                                    "stories",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 10,
            child: GridView.builder(
              // semanticChildCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 150,
              ),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://source.unsplash.com//random/$index"),
                  ),
                ),
              ),
              itemCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
