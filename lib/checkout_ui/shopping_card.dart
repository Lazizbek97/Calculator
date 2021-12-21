import 'package:flutter/material.dart';
import 'checkout.dart';

class ShoppingCard extends StatefulWidget {
  @override
  State<ShoppingCard> createState() => _ShoppingCard();
}

class _ShoppingCard extends State<ShoppingCard> {
  int soni = 1;
  int soni2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text("Checkout"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu_outlined))
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your items",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text("You have 2 items in your cart",
                    style: TextStyle(
                      fontSize: 15,
                    )),
                const Divider(
                  height: 20,
                  color: Colors.black54,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          height: MediaQuery.of(context).size.width * 0.2,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://envato-shoebox-0.imgix.net/7b1e/0ec6-81dd-40fa-b3d7-c39c6768e101/06232EOS+6D+Mark+II06-03-2018.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=1600&s=9e8bd23fb0603bbe2fb7442e907081f0")),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Pink Donut",
                                style: TextStyle(fontSize: 18),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: 35,
                                    height: 25,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white),
                                      onPressed: () {
                                        soni > 1 ? soni -= 1 : null;
                                        setState(() {});
                                      },
                                      child: const Text(
                                        "-",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(
                                      "$soni",
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                    height: 25,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white),
                                      onPressed: () {
                                        soni += 1;
                                        setState(() {});
                                      },
                                      child: const Text(
                                        "+",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(45, 0, 0, 55),
                          child: Text(
                            "${Check_balance.caculate(soni)}\$",
                            style: const TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.2,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://www.shugarysweets.com/wp-content/uploads/2020/01/baked-chocolate-donuts-recipe-720x720.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black),
                      ),
                      SizedBox(
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "Choco Donut",
                              style: TextStyle(fontSize: 18),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 35,
                                  height: 25,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white),
                                    onPressed: () {
                                      soni2 > 1 ? soni2 -= 1 : null;
                                      setState(() {});
                                    },
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Text(
                                    "$soni2",
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                  height: 25,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white),
                                    onPressed: () {
                                      soni2 += 1;
                                      setState(() {});
                                    },
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(45, 0, 0, 55),
                        child: Text(
                          "${Check_balance.caculate_choco(soni2)}\$",
                          style: const TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Subtotal: ",
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              "${Check_balance.caculate(soni) + Check_balance.caculate_choco(soni2)}\$",
                              style: const TextStyle(fontSize: 16),
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Shipping: ",
                                  style: TextStyle(fontSize: 16)),
                              Text("1.8\$", style: TextStyle(fontSize: 16)),
                            ]),
                      ),
                      const Divider(
                        color: Colors.black54,
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Total: ",
                                style: TextStyle(fontSize: 16)),
                            Text(
                              "${(Check_balance.caculate(soni) + Check_balance.caculate_choco(soni2) + 1.8)}\$",
                              style: const TextStyle(fontSize: 16),
                            ),
                          ]),
                    ],
                  ),
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text("Checkout"),
                    icon: const Icon(Icons.arrow_forward),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(5, 20, 5, 0),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cases_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
