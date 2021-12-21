import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<String> names = ['Emille', 'Alisa', 'Amanda', 'Alexa', 'Lila', 'Gorgea'];
  List<bool> doesWork = [false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Babysitting",
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.blue),
        actions: const [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.person_pin,
              size: 40,
            ),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    isThreeLine: true,
                    trailing: const Text(
                      "\$ 12",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    leading: const CircleAvatar(
                      radius: 40,
                      // minRadius: 20,
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      names[Random().nextInt(names.length)],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("🌟 🌟 🌟 🌟 🌟 "),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              minRadius: 10,
                              backgroundColor: Colors.white,
                              child: doesWork[Random().nextInt(2)]
                                  ? const CircleAvatar(
                                      minRadius: 9,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "S",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  : Text("S"),
                            ),
                            CircleAvatar(
                              minRadius: 10,
                              backgroundColor: Colors.white,
                              child: doesWork[Random().nextInt(2)]
                                  ? const CircleAvatar(
                                      minRadius: 9,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "M",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  : Text("M"),
                            ),
                            CircleAvatar(
                              minRadius: 10,
                              backgroundColor: Colors.white,
                              child: doesWork[Random().nextInt(2)]
                                  ? const CircleAvatar(
                                      minRadius: 9,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "T",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  : Text("T"),
                            ),
                            CircleAvatar(
                              minRadius: 10,
                              backgroundColor: Colors.white,
                              child: doesWork[Random().nextInt(2)]
                                  ? const CircleAvatar(
                                      minRadius: 9,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "W",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  : Text("W"),
                            ),
                            CircleAvatar(
                              minRadius: 10,
                              backgroundColor: Colors.white,
                              child: doesWork[Random().nextInt(2)]
                                  ? const CircleAvatar(
                                      minRadius: 9,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "T",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  : Text("T"),
                            ),
                            CircleAvatar(
                              minRadius: 10,
                              backgroundColor: Colors.white,
                              child: doesWork[Random().nextInt(2)]
                                  ? const CircleAvatar(
                                      minRadius: 9,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "F",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  : Text("F"),
                            ),
                            CircleAvatar(
                              minRadius: 10,
                              backgroundColor: Colors.white,
                              child: doesWork[Random().nextInt(2)]
                                  ? const CircleAvatar(
                                      minRadius: 9,
                                      backgroundColor: Colors.blue,
                                      child: Text(
                                        "S",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  : Text("S"),
                            ),
                          ],
                        ),
                        const Text("12:30 ~ 14:00"),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "About me:\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add to sitlist"),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        primary: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )
                ],
              ),
              // child: Column()
            );
          },
        ),
      ),
    );
  }
}
