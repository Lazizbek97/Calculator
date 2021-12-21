import 'package:flutter/material.dart';
import 'package:dars1/foodsApp/cart_page/cart_page.dart';
import 'package:dars1/foodsApp/about_page/about_page.dart';
import 'package:dars1/foodsApp/datas/datas.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map joriy_menu = AllData.myFoods['burgers'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15, 40, 20, 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Hii Lazizbek",
                      style: TextStyle(fontSize: 20),
                    ),
                    CircleAvatar(
                      radius: 27,
                      backgroundImage:
                          NetworkImage("https://source.unsplash.com/random"),
                    ),
                  ],
                ),
                const Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    "What do you want for dinner",
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: AllData.myFoods['menu'].length,
              itemBuilder: (context, index) {
                print(index);
                return InkWell(
                  onTap: () {
                    joriy_menu = AllData.change_menu(index);
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "${AllData.myFoods["menu"][index]}",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Text(
              "Recommended",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.56,
            width: double.infinity,
            child: GridView.builder(
              itemCount: joriy_menu.values.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5 / 3,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutPage(
                                joriy_menu[index]['name'],
                                joriy_menu[index]['price'],
                                joriy_menu[index]['about'],
                                joriy_menu[index]['picture'])));
                  },
                  child: Stack(clipBehavior: Clip.none, children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 25.0),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(
                        children: [
                          const Expanded(
                            flex: 6,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text("${joriy_menu[index]['name']}"),
                                Text(
                                  "${joriy_menu[index]['about']}",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("\$ ${joriy_menu[index]['price']}"),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Positioned(
                      top: -30,
                      left: 28,
                      child: Image.asset(
                        "${joriy_menu[index]['picture']}",
                        height: 160,
                        width: 160,
                      ),
                    )
                  ]),
                );
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.085,
            padding: EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.elliptical(220, 40))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CartPage();
                        },
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
