import 'package:dars1/foodsApp/datas/datas.dart';
import 'package:dars1/foodsApp/home_page/home_page.dart';
import 'package:dars1/foodsApp/cart_page/cart_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  String name = '';
  var price;
  String about = '';
  String pic = '';
  AboutPage(this.name, this.price, this.about, this.pic, {Key? key})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _AboutPageState createState() => _AboutPageState(
        name,
        price,
        about,
        pic,
      );
}

class _AboutPageState extends State<AboutPage> {
  String name = '';
  var price;
  String about = '';
  String pic = '';
  _AboutPageState(
    this.name,
    this.price,
    this.about,
    this.pic,
  ) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                            color: Colors.black,
                            padding: EdgeInsets.only(left: 10),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            icon: Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: IconButton(
                            color: Colors.black,
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "$pic",
                      height: 300,
                      width: MediaQuery.of(context).size.width * 0.9,
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$name",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("🌟🌟🌟🌟🌟"),
                        ],
                      ),
                      Text(
                        "\$ $price",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "🔥  341 callories  ",
                            style: TextStyle(fontSize: 11),
                          ),
                          SizedBox(
                            height: 20,
                            width: 30,
                            child: Image.asset(
                              "assets/images/deliveryboy.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Text(
                            "  20-25 min",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.yellow,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onDoubleTap: () => debugPrint("minus"),
                              child: const Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            ),
                            const Text(
                              "1",
                              style: TextStyle(fontSize: 12),
                            ),
                            InkWell(
                              onDoubleTap: () => debugPrint("minus"),
                              child: const Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text("$about"),
                  const Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/icons/meat.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/icons/mushroom.png"),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.yellow.shade600,
                        radius: 35,
                        child: IconButton(
                          color: Colors.black,
                          onPressed: () {
                            AllData.myFoods['toBuy']['name'].add(name);
                            AllData.myFoods['toBuy']['about'].add(about);
                            AllData.myFoods['toBuy']['pic'].add(pic);
                            AllData.myFoods['toBuy']['price'].add(price);
                            AllData.myFoods['toBuy']['number'].add(1);

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CartPage()));
                          },
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/icons/cabbage.png"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/icons/carrot.png"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
