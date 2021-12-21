import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ME_home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            // color: Colors.amberAccent,
            height: MediaQuery.of(context).size.height * 0.07,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Milan",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "_________________________________",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Search",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/1"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Sale")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/2"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Brand")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/3"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Clothing")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/4"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Shoes")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/5"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Recycble")
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CircleAvatar(
                        minRadius: 30,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/6"),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text("Second Hand")
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),

            // scrollDirection: Axis.vertical,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ClipRRect(
                    child: FadeInImage(
                      fit: BoxFit.cover,
                      placeholder: AssetImage("assets/images/loading.gif"),
                      image:
                          NetworkImage("https://source.unsplash.com/random/12"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 2,
                        width: 70,
                        color: Colors.black,
                      ),
                      Text(
                        '''   Modern
  Essentials''',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        height: 2,
                        width: 70,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment(0, 0),
                  child: Text(
                    "Discovr New Styles",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade300,
                        maxRadius: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade500,
                        maxRadius: 6,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade300,
                        maxRadius: 4,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade300,
                        maxRadius: 4,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.width * 0.4,
                            child: FadeInImage(
                                fit: BoxFit.cover,
                                placeholder:
                                    AssetImage("assets/images/loading.gif"),
                                image: NetworkImage(
                                    "https://source.unsplash.com/random")),
                          ),
                          Text("New Style")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.width * 0.4,
                            child: FadeInImage(
                                fit: BoxFit.cover,
                                placeholder:
                                    AssetImage("assets/images/loading.gif"),
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/32")),
                          ),
                          Text("New Style")
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.width * 0.4,
                            child: FadeInImage(
                                fit: BoxFit.cover,
                                placeholder:
                                    AssetImage("assets/images/loading.gif"),
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/15")),
                          ),
                          Text("New Style")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.width * 0.4,
                            child: FadeInImage(
                                fit: BoxFit.cover,
                                placeholder:
                                    AssetImage("assets/images/loading.gif"),
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/14")),
                          ),
                          Text("New Style")
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
