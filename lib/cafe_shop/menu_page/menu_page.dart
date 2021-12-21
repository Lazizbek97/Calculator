import 'dart:math';

import 'package:dars1/cafe_shop/cart_page/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:dars1/cafe_shop/datas/daras.dart';
import 'package:dars1/cafe_shop/about_page/about_page.dart';

class Menu_page extends StatefulWidget {
  @override
  State<Menu_page> createState() => _Menu_page();
}

class _Menu_page extends State<Menu_page> {
  List drinks = AllCaffees.coffee_types(1);
  List pic_links = AllCaffees.pics_link(1);
  List prices = AllCaffees.get_price(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Caffee \n House",
                    style: TextStyle(fontSize: 25),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            NetworkImage("https://source.unsplash.com/random"),
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.red.shade100),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                cursorColor: Colors.white60,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                  fillColor: const Color(0xff171017),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white70,
                  ),
                  hintText: 'Browse your favorite coffee',
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              color: Color(0xff22151F),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: const BoxDecoration(
                      color: Color(0xff3B212A),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: ListView.builder(
                      itemCount: AllCaffees.coffee_data['coffee_types'].length,
                      itemBuilder: (context, index) {
                        return RotatedBox(
                          quarterTurns: 3,
                          child: TextButton(
                            onPressed: () {
                              drinks = AllCaffees.coffee_types(index);
                              pic_links = AllCaffees.pics_link(index);
                              prices = AllCaffees.get_price(index);

                              setState(() {});
                            },
                            child: Text(
                              "${AllCaffees.coffee_data['coffee_types'][index]}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: Color(0xff22151F),
                    child: GridView.builder(
                      itemCount: drinks.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 3,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => AboutPage(
                                          drinks[index],
                                          prices[index][0],
                                          pic_links[index]),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                                NetworkImage(pic_links[index]),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Color(0xff372B35),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      Positioned(
                                        child: Opacity(
                                          opacity: 0.7,
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                right: 100),
                                            decoration: const BoxDecoration(
                                                color: Color(0xff4B4542),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10))),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow.shade700,
                                                  size: 20,
                                                ),
                                                Text(
                                                  "${Random().nextInt(3) + 2}",
                                                  style: const TextStyle(
                                                      fontSize: 13),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "${drinks[index]}",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.05,
                                      margin:
                                          const EdgeInsets.fromLTRB(5, 7, 5, 0),
                                      padding: EdgeInsets.only(right: 60),
                                      decoration: BoxDecoration(
                                          color: Color(0xff453D48),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Text(
                                          "${prices[index][0]} \$",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 90,
                                      bottom: 4,
                                      child: IconButton(
                                        onPressed: () {
                                          AllCaffees.myCoffees['picture']
                                              .add(pic_links[index]);
                                          AllCaffees.myCoffees['name']
                                              .add(drinks[index]);
                                          AllCaffees.myCoffees['price']
                                              .add(prices[index][0]);
                                          AllCaffees.myCoffees['soni'].add(1);

                                          setState(() {});
                                        },
                                        icon: const Icon(Icons.add_box_rounded,
                                            size: 45),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff372B35),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: double.infinity,
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu_page()));
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    icon: const Icon(
                      Icons.shopping_cart_rounded,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_sharp,
                      size: 35,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
