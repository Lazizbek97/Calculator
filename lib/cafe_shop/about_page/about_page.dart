import 'package:dars1/cafe_shop/cart_page/cart_page.dart';
import 'package:dars1/cafe_shop/datas/daras.dart';
import 'package:dars1/cafe_shop/menu_page/menu_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage(this.coffee_name, this.coffee_price, this.link, {Key? key})
      : super(key: key);
  double coffee_price = 0;
  String coffee_name = '';
  String link = '';

  @override
  _AboutPageState createState() =>
      _AboutPageState(coffee_name, coffee_price, link);
}

class _AboutPageState extends State<AboutPage> {
  double price = 0;
  String name = '';
  String link = '';

  _AboutPageState(this.name, this.price, this.link) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
            sliver: SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.5,
              elevation: 0,
              backgroundColor: Colors.transparent,
              floating: true,
              leading: CircleAvatar(
                backgroundColor: Color(0xffDDE0D9).withOpacity(0.3),
                child: IconButton(
                  splashColor: Colors.red,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Menu_page()));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(link),
                      )),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(15, 20, 15, 10),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "$name",
                                style: const TextStyle(fontSize: 25),
                              ),
                              Row(
                                children: const [
                                  Text(
                                    "Drizzled with Caramel",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Text("4.5"),
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 35,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 15, 18),
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book... ",
                              ),
                              TextSpan(
                                text: "Read More",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Choice of Milk",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Text("Oat Milk"),
                            style: OutlinedButton.styleFrom(
                                primary: Color(0xffEFE4C8)),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text("Soy Milk"),
                            style: OutlinedButton.styleFrom(
                                primary: Color(0xffEFE4C8)),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text("Almount Milk"),
                            style: OutlinedButton.styleFrom(
                                primary: Color(0xffEFE4C8)),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "$price \$",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        AllCaffees.myCoffees['picture'].add(link);
                        AllCaffees.myCoffees['name'].add(name);
                        AllCaffees.myCoffees['price'].add(price);
                        AllCaffees.myCoffees['soni'].add(1);

                        setState(() {});
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CartPage()));
                      },
                      child: Text("BUY NOW"),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffEFE4C8),
                          padding: EdgeInsets.symmetric(
                              horizontal: 110, vertical: 10)),
                    ),
                  ],
                ),
              );
            }, childCount: 1),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: ),
    );
  }
}
