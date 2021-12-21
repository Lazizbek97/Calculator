import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.teal,
            pinned: true,
            centerTitle: true,
            stretch: true,
            onStretchTrigger: () async {
              print("object");
            },
            expandedHeight: MediaQuery.of(context).size.height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.blurBackground],
              title: Text("Tepaga tort"),
              centerTitle: true,
              collapseMode: CollapseMode.parallax,
              background: DecoratedBox(
                position: DecorationPosition.foreground,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: <Color>[Colors.teal, Colors.transparent])),
                child: Image.network(
                  "https://source.unsplash.com/random",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  margin: EdgeInsets.all(8.0),
                  color: Colors.yellowAccent,
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.8,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
