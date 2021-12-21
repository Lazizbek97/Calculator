import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<String> shopNames = [
    'Lorem Shop',
    "Zara",
    "Top Ten10",
    "HiiMart",
    "Hee shop",
    "LoLo babies"
        'Lorem Shop',
    "Zara",
    "Top Ten10",
    "HiiMart",
    "Hee shop",
    "LoLo babies"
        "Top Ten10",
    "HiiMart",
    "Hee shop",
    "LoLo babies"
        'Lorem Shop',
    "Zara",
    "Top Ten10",
    "HiiMart",
    "Hee shop",
    "LoLo babies"
  ];
  List<double> discounts = [2.4, 5.6, 7.2, 1.4, 3.4, 4.6, 8.1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 80,
      //   backgroundColor: Colors.green.shade100,
      //   elevation: 0,
      //   leading: const Center(
      //       child: Text(
      //     "9:00",
      //     style: TextStyle(fontSize: 20),
      //   )),
      //   actions: const [
      //     Icon(Icons.network_cell_outlined),
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 10),
      //       child: Icon(Icons.battery_full_sharp),
      //     ),
      //   ],
      // ),
      body: Container(
        color: Colors.green.shade100,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: double.infinity,
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 8, 280, 8),
                      child: Text(
                        "9:00",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Icon(Icons.network_cell_outlined),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.battery_full_sharp),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                // margin: EdgeInsets.only(top: 100),

                height: MediaQuery.of(context).size.height * 0.9,
                width: double.infinity,
                // color: Colors.amberAccent,
                decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Shops",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 20),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Favorites",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => index % 5 == 0
                            ? TextButton(
                                onPressed: () {
                                  AwesomeDialog(
                                          btnCancelOnPress: () {
                                            snakbar(false);
                                          },
                                          btnOkOnPress: () {
                                            snakbar(true);
                                          },
                                          context: context,
                                          dialogType: DialogType.SUCCES,
                                          title: "You got all discounts!",
                                          desc:
                                              "You can use your discount codes within a week!")
                                      .show();
                                },
                                child: const Text(
                                  "Hey! we've 70% discounts today! Come on",
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 15),
                                ),
                              )
                            : SizedBox(),
                        itemCount: shopNames.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => AwesomeDialog(
                                    btnCancelOnPress: () {
                                      removeSnakbar(false);
                                    },
                                    btnOkOnPress: () {
                                      shopNames.remove(shopNames[index]);

                                      removeSnakbar(true);
                                    },
                                    context: context,
                                    dialogType: DialogType.QUESTION,
                                    title: "Do you want to remove?",
                                    desc:
                                        "Are you going to remove ${shopNames[index]}from favorites? ")
                                .show(),
                            child: Container(
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 35, horizontal: 10),
                                leading: CircleAvatar(
                                  radius: 35,
                                  backgroundImage: NetworkImage(
                                      "https://source.unsplash.com/random/$index"),
                                ),
                                title: Text(
                                  shopNames[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0),
                                ),
                                subtitle: const Text(
                                    "Shop any time, anywhere you want!"),
                                trailing: Text(
                                  "${discounts[Random().nextInt(discounts.length)]}%",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const Center(
                      heightFactor: 1,
                      child: Icon(Icons.double_arrow_sharp),
                    ),
                    Expanded(
                      child: Container(
                        // margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green.shade50,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.person,
                                  size: 30,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.red,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 30,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green.shade50,
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.credit_card,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  snakbar(bool isOk) => ScaffoldMessenger.of(context).showSnackBar(
        isOk
            ? const SnackBar(
                content: Text("Thank you for !"),
              )
            : const SnackBar(
                content: Text("You canceled your membership discounts !"),
              ),
      );
  removeSnakbar(bool isOk) => ScaffoldMessenger.of(context).showSnackBar(
        isOk
            ? const SnackBar(
                content: Text("You removed !"),
              )
            : const SnackBar(
                content: Text("Nothing is removed!"),
              ),
      );
}
