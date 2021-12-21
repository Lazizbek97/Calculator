import 'package:flutter/material.dart';

class About_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(10),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://source.unsplash.com/random"),
            ),
          ),
          child: Container(
            alignment: Alignment(-0.9, -0.7),
            child: BackButton(
              color: Colors.black,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "22, June 2020",
                style: TextStyle(color: Colors.grey.shade400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Minialist Neutral Home Office",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent.shade700,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://source.unsplash.com/random/2"),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Posted by",
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey.shade500),
                      ),
                      Text(
                        "Lazizbek Fayziev",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.add),
                          Text("Follow"),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
