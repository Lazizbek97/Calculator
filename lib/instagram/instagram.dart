import 'dart:math';

import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  @override
  State<Instagram> createState() => _Instagram();
}

class _Instagram extends State<Instagram> {
  Map users = {
    "names": [
      'Connor',
      'Julian',
      "Aidan",
      'Harold',
      'Conner',
      'Peter',
      'Hunter',
      'Eli',
      'Alberto',
      'Carlos',
      'Shane',
      'Aaron',
      'Marlin',
      'Paul',
      'Ricardo',
      'Hector',
      'Alexis',
      'Adrian',
      'Kingston',
      'Douglas',
      'Gerald',
      'Joey',
      'Johnny',
      'Charlie',
      'Scott',
      'Martin',
      'Tristin',
    ],
    "is_loved": [
      false,
      true,
      true,
      false,
      false,
      true,
      true,
      false,
      false,
      true,
      true,
      false,
      false,
      true,
      true,
      false,
    ],
    "num_likes": [
      12,
      34,
      56,
      7,
      89,
      9,
      7,
      87,
      56,
      34,
      5,
      7,
      98,
      122,
      34,
      657,
      8,
      4,
      5
    ]
  };

  String? user_name;
  bool is_loved = false;
  int num_likes = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          bottomOpacity: 0.2,
          title: Text("Instagram"),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.messenger_outline_sharp)),
            )
          ],
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          // physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                    // physics: ScrollPhysics(),
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        // mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            child: CircleAvatar(
                              radius: 38,
                              // backgroundColor: Colors.red,
                              backgroundImage: NetworkImage(
                                  "https://source.unsplash.com/random/${index + 20}"),
                            ),
                          ),
                          Text("${users['names'][index]}"),
                        ],
                      );
                    }),
              ),
              Container(
                height: 573,
                width: double.infinity,
                child: ListView.builder(
                  physics: ScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("${users['names'][index]}"),
                              subtitle: Text("SomewhereI'mHAPPY"),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://source.unsplash.com/random/${index + 20}"),
                              ),
                            ),
                            Container(
                              height: 300,
                              width: double.infinity,
                              child: Image.network(
                                "https://source.unsplash.com/random/${index}",
                                fit: BoxFit.cover,
                              ),
                            ),
                            ButtonBar(
                              buttonPadding: EdgeInsets.symmetric(vertical: 0),
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (users['is_loved'][index]) {
                                      users['is_loved'][index] = false;
                                      users['num_likes'][index] += 1;
                                    } else {
                                      users['is_loved'][index] = true;
                                      users['num_likes'][index] -= 1;
                                      num_likes -= 1;
                                    }
                                    setState(() {});
                                  },
                                  icon: is_liked(index),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.mode_comment_outlined),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send_outlined),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.bookmark_border),
                                ),
                              ],
                            ),
                            ListTile(
                                title:
                                    Text("${users['num_likes'][index]} likes"),
                                isThreeLine: true,
                                subtitle: Column(
                                  children: const [
                                    Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry . . . ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "View 32 all comments                                                         ",
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 29,
          // fixedColor: Colors.white,
          selectedItemColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'School',
            ),
          ],
        ));
  }

  is_liked(int index) {
    return users['is_loved'][index]
        ? Icon(Icons.favorite_border_outlined)
        : Icon(
            Icons.favorite,
            color: Colors.red,
          );
  }
}
