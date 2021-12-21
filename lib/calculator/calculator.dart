// ignore_for_file: non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _Calculator();
}

class _Calculator extends State<Calculator> {
  List hisoblash = [];
  List<String> sonlar = [];
  List<String> amallar = [];
  num natija = 0;
  bool manfiySon = false;
  bool mode = false;
  bool is_C_pressed = false;
  bool history_opened = false;
  bool dot_pressed = false;
  bool addionals = false;

  Map history = {
    'hisoblashlar': [],
    'natija': [],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chageColor(mode),
      body: Column(
        children: [
          Expanded(
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                margin: const EdgeInsets.only(top: 40),
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      hisoblash.map((e) => e).join(),
                      style: TextStyle(fontSize: 35, color: chageColor(!mode)),
                    ),
                    // Text(
                    //   "${joriy_holat()}",
                    //   style: const TextStyle(fontSize: 35, color: Colors.white),
                    // ),
                  ],
                )),
          ),
          const Divider(
            color: Colors.black26,
            height: 1,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                  onPressed: () {
                    history_opened
                        ? history_opened = false
                        : history_opened = true;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.access_time_outlined,
                    color: chageColor(!mode),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    mode ? mode = false : mode = true;
                    setState(() {});
                  },
                  icon: Icon(
                    changeMode(),
                    color: chageColor(!mode),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    addionals ? addionals = false : addionals = true;
                    setState(() {});
                  },
                  icon:
                      Icon(Icons.calculate_outlined, color: chageColor(!mode)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                IconButton(
                  onPressed: () {
                    hisoblash.removeLast();
                    if (hisoblash.isEmpty) {
                      dot_pressed = false;
                    }

                    setState(() {});
                  },
                  icon:
                      Icon(Icons.backspace_outlined, color: chageColor(!mode)),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black26,
            height: 1,
          ),
          Expanded(
            child: history_opened ? history_page() : main_page(),
          ),
        ],
      ),
      floatingActionButton: history_opened
          ? FloatingActionButton.extended(
              onPressed: () {
                history['hisoblashlar'].clear();
                history['natija'].clear();
                setState(() {});
              },
              label: const Text("Clear history"),
              icon: const Icon(Icons.delete_forever_outlined),
            )
          : null,
    );
  }

  raqamlar_buttoni(int son) => ElevatedButton(
        onPressed: () {
          if (manfiySon) {
            hisoblash.last = (-son);
            manfiySon = false;
          } else {
            try {
              if (hisoblash.last != '²' || hisoblash.last != '!') {
                hisoblash.add(son);
              }
            } catch (e) {
              hisoblash.add(son);
            }
          }

          setState(() {});
        },
        child: Text("$son",
            style: const TextStyle(fontSize: 25, color: Colors.white)),
        style: ElevatedButton.styleFrom(
            primary: (mode) ? chageColor(mode) : Colors.grey.shade900,
            shape: const CircleBorder(),
            fixedSize: const Size.fromRadius(35)),
      );

  // ignore: non_constant_identifier_names
  amallar_buttoni(String amal, String amal_toShow, Color color, double size,
          [bck_color = true]) =>
      ElevatedButton(
        onPressed: () {
          if (amal == 'C') {
            dot_pressed = false;

            hisoblash = [];
            sonlar = [];
            amallar = [];
            natija = 0;
            setState(() {});
          } else if (amal == '=') {
            hisoblash.add('=');
            calculate();
          } else if (amal == '.') {
            if (!dot_pressed) {
              hisoblash.add('.');
              dot_pressed = true;
            }
          } else {
            if (amal == '+/-') {
              if (hisoblash.isEmpty || hisoblash.last is! num) {
                manfiySon = true;
                hisoblash.add('-');
              } else {
                num vaqtingcha = num.parse(hisoblash.join(''));
                hisoblash.clear();
                hisoblash.add(-vaqtingcha);
              }
            } else if (hisoblash.isEmpty) {
              if (amal == '√') {
                hisoblash.add(amal);
              } else if (amal == 'π') {
                hisoblash.add(pi);
              }
            } else if (hisoblash.last is num) {
              if (amal == '√' || amal == 'π') {
                hisoblash.add('x');
                amal == 'π' ? hisoblash.add(pi) : hisoblash.add(amal);
              } else {
                hisoblash.add(amal);
                debugPrint("$hisoblash");
              }

              dot_pressed = false;
            } else {
              if (hisoblash.last == '-' && hisoblash.length == 1) {
                hisoblash.removeLast();
              } else if (hisoblash.isNotEmpty) {
                if (amal == '√') {
                  hisoblash.add(amal);
                } else {
                  amal == 'π' ? hisoblash.add(pi) : hisoblash.last = amal;
                }
                dot_pressed = false;
              }
            }
          }

          setState(() {});
        },
        child: Text(
          "$amal_toShow",
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w300,
            color: color,
          ),
        ),
        style: ElevatedButton.styleFrom(
            primary: amallarButtonColor(bck_color),
            shape: CircleBorder(),
            fixedSize: Size.fromRadius(35)),
      );
  amallarButtonColor(bool bckColor) {
    if (mode) {
      return bckColor ? Colors.white70 : Colors.green;
    } else {
      return bckColor ? Colors.grey.shade900 : Colors.green;
    }
  }

  changeMode() {
    if (mode) {
      return Icons.light_mode_outlined;
    } else {
      return Icons.dark_mode_outlined;
    }
  }

  chageColor(bool mode) {
    if (mode) {
      return Colors.white70;
    } else {
      return Colors.black;
    }
  }

  calculate() {
    String hisobTarixi = '';
    String vaqt = '';
    for (var element in hisoblash) {
      if (element is num || element == '.') {
        vaqt += (element.toString());
      } else if (element == '=') {
        if (vaqt != '') {
          sonlar.add(vaqt);
          hisobTarixi += vaqt;
        }

        natijaber();
        history['hisoblashlar'].add(hisobTarixi);
        history['natija'].add('=' + natija.toString());

        sonlar = [];
        amallar = [];
        hisoblash = [];
        hisoblash.add(natija);

        natija = 0;

        setState(() {});
      } else {
        if (vaqt != '') {
          sonlar.add(vaqt);
          hisobTarixi += vaqt;
          vaqt = '';
        }

        amallar.add(element);
        hisobTarixi += element;
      }
    }
  }

  natijaber() {
    debugPrint("$hisoblash");

    debugPrint("$amallar");
    if (amallar.contains('√')) {
      int index = amallar.indexOf('√');
      sonlar[index] = sqrt(num.parse(sonlar[index])).toString();
      amallar.remove('√');
    } else if (amallar.contains('²')) {
      int index = amallar.indexOf('²');
      sonlar[index] =
          (num.parse(sonlar[index]) * num.parse(sonlar[index])).toString();
      amallar.remove('²');
    } else if (amallar.contains('^')) {
      int index = amallar.indexOf('^');
      num n = num.parse(sonlar[index]);
      for (var i = 1; i < int.parse(sonlar[index + 1]); i++) {
        n *= num.parse(sonlar[index]);
      }
      sonlar[index] = n.toString();
      sonlar.remove(sonlar[index + 1]);
      amallar.remove('^');
    } else if (amallar.contains('!')) {
      int index = amallar.indexOf('!');
      sonlar[index] = fact((int.parse(sonlar[index]))).toString();
      amallar.remove('!');
    }

    for (var i = 0; i < sonlar.length; i++) {
      if (i == 0) {
        natija = num.parse(sonlar[i]);
        setState(() {});
      } else {
        hisoblagich(num.parse(sonlar[i]), amallar[i - 1]);
      }
    }
  }

  hisoblagich(num s1, String amalim) {
    switch (amalim) {
      case '+':
        natija = natija + s1;
        break;
      case '-':
        natija = natija - s1;
        break;
      case 'x':
        natija = natija * s1;
        break;
      case '/':
        natija = natija / s1;
        break;
      case '%':
        natija = natija % s1;
        break;

      default:
    }
  }

  int fact(int n) {
    if (n <= 1) //Base Condition
      return 1;
    return n * fact(n - 1);
  }

  main_page() => Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                amallar_buttoni('C', 'C', Colors.red, 30),
                addionals
                    ? amallar_buttoni('²', 'x²', Colors.green, 30)
                    : amallar_buttoni('√', '√', Colors.green, 30),
                addionals
                    ? amallar_buttoni('^', 'x^y', Colors.green, 25)
                    : amallar_buttoni('%', '%', Colors.green, 30),
                addionals
                    ? amallar_buttoni('π', 'π', Colors.green, 30)
                    : amallar_buttoni('/', '/', Colors.green, 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                raqamlar_buttoni(7),
                raqamlar_buttoni(8),
                raqamlar_buttoni(9),
                addionals
                    ? amallar_buttoni('!', 'x!', Colors.green, 30)
                    : amallar_buttoni('x', 'x', Colors.green, 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                raqamlar_buttoni(4),
                raqamlar_buttoni(5),
                raqamlar_buttoni(6),
                amallar_buttoni('-', '-', Colors.green, 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                raqamlar_buttoni(1),
                raqamlar_buttoni(2),
                raqamlar_buttoni(3),
                amallar_buttoni('+', '+', Colors.green, 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                amallar_buttoni('+/-', '-', Colors.white, 24),
                raqamlar_buttoni(0),
                amallar_buttoni('.', '.', Colors.white, 30),
                amallar_buttoni('=', '=', Colors.white, 30, false),
              ],
            ),
          ],
        ),
      );
  history_page() => Container(
        height: MediaQuery.of(context).size.height * 0.5,
        width: double.infinity,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemCount: history['natija'].length,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text(
                    history['hisoblashlar'][index],
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    history['natija'][index],
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
