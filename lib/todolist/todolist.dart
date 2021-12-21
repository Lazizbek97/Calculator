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
        backgroundColor: Colors.transparent,
        elevation: 0,
        // titleTextStyle: TextStyle(color: Colors.black),

        title: Text(
          "To Do List",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                child: Image.asset(
                  "assets/images/checklist.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "General List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "You have 15 things to do",
                    style: TextStyle(fontSize: 15),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("View"),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.34,
                height: MediaQuery.of(context).size.width * 0.3,
                child: Image.asset(
                  "assets/images/gift1.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  const Text(
                    "Wish List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "You have 12 wishes",
                    style: TextStyle(color: Colors.red.shade300, fontSize: 15),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("View"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade300,
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.place_outlined,
                  size: 120, color: Colors.yellow.shade600),
              Column(
                children: [
                  const Text(
                    "Go to List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "You have 8 places to go",
                    style:
                        TextStyle(color: Colors.yellow.shade700, fontSize: 15),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("View"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow.shade700,
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.shopping_cart_outlined,
                size: 120,
                color: Colors.red,
              ),
              Column(
                children: [
                  const Text(
                    "Shopping List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "You have 13 items to buy",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "View",
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
