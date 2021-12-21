import 'package:dars1/foodsApp/home_page/home_page.dart';
import 'package:dars1/foodsApp/datas/datas.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  num joriyBalance = AllData.balance();
  num delivery = AllData.balance() == 0 ? 0 : 10;
  num total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  const Text(
                    "Cart",
                    style: TextStyle(fontSize: 30),
                  ),
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage:
                        NetworkImage("https://source.unsplash.com/random"),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
              itemCount: AllData.myFoods['toBuy']['number'].length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onDoubleTap: () {
                    AllData.myFoods['toBuy']['name']
                        .remove(AllData.myFoods['toBuy']['name'][index]);
                    AllData.myFoods['toBuy']['pic']
                        .remove(AllData.myFoods['toBuy']['pic'][index]);
                    AllData.myFoods['toBuy']['price']
                        .remove(AllData.myFoods['toBuy']['price'][index]);
                    AllData.myFoods['toBuy']['about']
                        .remove(AllData.myFoods['toBuy']['about'][index]);
                    AllData.myFoods['toBuy']['number']
                        .remove(AllData.myFoods['toBuy']['number'][index]);
                    setState(() {});
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Image.asset(
                              "${AllData.myFoods['toBuy']['pic'][index]}"),
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${AllData.myFoods['toBuy']['name'][index]}",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(
                                        "${AllData.myFoods['toBuy']['about'][index]}",
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.04,
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.yellow,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onDoubleTap: () {
                                            if (AllData.myFoods['toBuy']
                                                    ['number'][index] !=
                                                1) {
                                              AllData.myFoods['toBuy']['number']
                                                  [index] -= 1;
                                              joriyBalance -=
                                                  AllData.myFoods['toBuy']
                                                      ['price'][index];
                                            }
                                            ;

                                            setState(() {});
                                          },
                                          child: const Icon(
                                            Icons.remove,
                                            size: 20,
                                          ),
                                        ),
                                        Text(
                                          "${AllData.myFoods['toBuy']['number'][index]}",
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                        InkWell(
                                          onDoubleTap: () {
                                            joriyBalance +=
                                                AllData.myFoods['toBuy']
                                                    ['price'][index];

                                            AllData.myFoods['toBuy']['number']
                                                [index] += 1;
                                            setState(() {});
                                          },
                                          child: const Icon(
                                            Icons.add,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "\$ ${AllData.myFoods['toBuy']['price'][index]}",
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(35),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Subtotal"),
                      Text("\$ ${joriyBalance.toStringAsFixed(2)}"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery"),
                      Text("\$ $delivery"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total"),
                      Text(
                          "\$ ${(joriyBalance + delivery).toStringAsFixed(2)}"),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      AwesomeDialog(
                          context: context,
                          dialogType: DialogType.QUESTION,
                          animType: AnimType.BOTTOMSLIDE,
                          title: 'Do you want to buy?',
                          desc:
                              'Click ok to buy, cancel order by clicking cancel button!',
                          btnCancelOnPress: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Your order has been canceled!"),
                                backgroundColor: Colors.transparent,
                              ),
                            );
                          },
                          btnOkOnPress: () {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.SUCCES,
                              animType: AnimType.BOTTOMSLIDE,
                              title: 'Successfully complited!',
                              desc:
                                  'Your order will be delivered as soon as possible, Thank you!',
                              btnOkOnPress: () {},
                            ).show();
                          }).show();
                    },
                    child: const Text(
                      "Check Out",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      primary: Colors.yellow.shade400,
                      shape: StadiumBorder(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
