// import 'package:dars1/home_works/first_ui_design/about_item.dart';
// import 'package:dars1/cafe_shop/cart_page/cart_page.dart';
import 'package:flutter/material.dart';
// import 'cafe_shop/menu_page/menu_page.dart';
// import 'cafe_shop/about_page/about_page.dart';
// import 'tests/test1.dart';
// import 'foodsApp/home_page/home_page.dart';
// import 'foodsApp/about_page/about_page.dart';
// import 'foodsApp/cart_page/cart_page.dart';
// import 'tiktactoe/tiktaktoe.dart';
// import 'games/qqt/qqt.dart';
// import 'games/pixelsGame/pixelGame.dart';
import 'calculator/calculator.dart';

void main() {
  runApp(const MeningDasturim());
}

class MeningDasturim extends StatelessWidget {
  const MeningDasturim({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xffCCCCCC),
        // scaffoldBackgroundColor: Colors.orange[100],
      ),
      darkTheme: ThemeData.from(
        colorScheme: ColorScheme.highContrastLight(
          background: Colors.white38,
        ),
      ),
      title: "Food Booking",
      home: Calculator(),
    );
  }
}
