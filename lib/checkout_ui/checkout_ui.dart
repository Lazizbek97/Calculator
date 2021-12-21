import 'package:flutter/material.dart';
import 'checkout.dart';

class Checkout_ui extends StatefulWidget {
  @override
  State<Checkout_ui> createState() => _Checkout_ui();
}

class _Checkout_ui extends State<Checkout_ui> {
  int _num_of_donut = 1;
  bool is_liked = false;
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
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        top: 10,
                        left: 10,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios_new),
                          alignment: Alignment.topLeft,
                        ),
                      ),
                      Positioned(
                        top: -60,
                        child: Image.asset(
                          "assets/images/delivery.png",
                          height: 200,
                          width: 200,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: IconButton(
                          onPressed: () {
                            is_liked ? is_liked = false : is_liked = true;
                            setState(() {});
                          },
                          icon: is_liked
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : const Icon(Icons.favorite_border),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Chocolate Donut",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "This colorful Donut is nothing sepctacular, but definitely gets job done!",
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(
                  height: 0,
                  color: Colors.black54,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text("\$ ${Check_balance.caculate(_num_of_donut)}",
                      style: const TextStyle(fontSize: 25)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          _num_of_donut != 1 ? _num_of_donut -= 1 : null;
                          setState(() {});
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "$_num_of_donut",
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _num_of_donut += 1;

                          setState(() {});
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Add to card"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(5, 70, 5, 0),
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
