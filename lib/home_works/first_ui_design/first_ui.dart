import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        leading: const Icon(
          Icons.search,
        ),
        elevation: 0,
        actions: [
          Container(
            // padding: EdgeInsets.all(6),
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.1,
            margin: EdgeInsets.only(top: 5),

            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-with-glasses.jpg",
              ),
              radius: 34.0,
              foregroundColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
            child: const Text(
              "Beautiful quarantine home offices",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: "assets/images/loading.gif",
                      image: "https://source.unsplash.com/random/1",
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "22, June 2020",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 13),
                      ),
                      Text(
                        "Warm plant based decoration designer office",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: MediaQuery.of(context).size.width * 0.07,
                              width: MediaQuery.of(context).size.width * 0.07,
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-with-glasses.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Lazizbek Fayziev",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: "assets/images/loading.gif",
                      image: "https://source.unsplash.com/random/2",
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "22, June 2020",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 13),
                      ),
                      Text(
                        "Minimalist neutral home office",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey.shade300,
                            size: 20,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: MediaQuery.of(context).size.width * 0.07,
                              width: MediaQuery.of(context).size.width * 0.07,
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-with-glasses.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Lazizbek Fayziev",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: "assets/images/loading.gif",
                      image: "https://source.unsplash.com/random/3",
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "22, June 2020",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 13),
                      ),
                      Text(
                        "Dark and intemate novelist and actor office",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: MediaQuery.of(context).size.width * 0.07,
                              width: MediaQuery.of(context).size.width * 0.07,
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-with-glasses.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Lazizbek Fayziev",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: FadeInImage.assetNetwork(
                      fit: BoxFit.cover,
                      placeholder: "assets/images/loading.gif",
                      image: "https://source.unsplash.com/random/4",
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "22, June 2020",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 13),
                      ),
                      Text(
                        "Simple outside view office from non-fiction author",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellowAccent.shade700,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey.shade300,
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey.shade300,
                            size: 20,
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              height: MediaQuery.of(context).size.width * 0.07,
                              width: MediaQuery.of(context).size.width * 0.07,
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-with-glasses.jpg",
                                ),
                              ),
                            ),
                            Text(
                              "Lazizbek Fayziev",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
