import 'dart:math';

import 'package:flutter/material.dart';

class Telegram extends StatefulWidget {
  @override
  State<Telegram> createState() => _Telegram();
}

class _Telegram extends State<Telegram> {
  int _chats_num = 0;
  List<String> names = ['Ali', "Asror", "Yahyo", "Kamola", "Lobar", "Marjona"];
  List<String> messages = [
    "Get a life",
    "Goodbye",
    "GG: Good game",
    "Good luck, have fun",
    "Hugs and kisses",
    "Have a nice day",
    "Hit me up",
    "Hope this helps",
    "Homework",
  ];
  List<String> showed_names = [];
  List<int> users_ID = [];
  List<String> user_message = [];
  int name_num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Telegram"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.folder_outlined,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (contex, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://source.unsplash.com/random/${users_ID[index]}"),
              ),
              title: Text("${showed_names[index]}"),
              subtitle: Text("${user_message[index]}"),
              trailing: IconButton(
                disabledColor: Colors.amber,
                splashRadius: 21,
                onPressed: () {
                  //* Bosilgan user malumotlari o'chirilmoqda

                  showed_names.remove(showed_names[index]);
                  users_ID.remove(users_ID[index]);
                  user_message.remove(user_message[index]);

                  _chats_num -= 1;

                  setState(() {});
                },
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        },
        itemCount: _chats_num,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _chats_num += 1;
          var random = Random().nextInt(names.length);

          // * Kiritilgan userlarning malumotlari saqlanmoqda

          showed_names.add(names[random]);
          users_ID.add(_chats_num);
          user_message.add(messages[random]);

          name_num = random;

          setState(() {});
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
