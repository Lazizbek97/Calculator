import 'package:dars1/cafe_shop/datas/daras.dart';
import 'package:dars1/cafe_shop/menu_page/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double totalSum = AllCaffees.boshlangichSumma();

  double deleveryCharge = AllCaffees.boshlangichSumma() == 0 ? 0 : 4.9;
  double taxes = AllCaffees.boshlangichSumma() == 0 ? 0 : 16.9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              color: Color(0xff22151F),
              height: MediaQuery.of(context).size.height * 0.1,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(10, 35, 10, 10),
              alignment: Alignment.center,
              child: const Text(
                "Cart",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
                itemCount: AllCaffees.myCoffees['name'].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onDoubleTap: () {
                      totalSum -= AllCaffees.myCoffees['price'][index];

                      AllCaffees.myCoffees['picture']
                          .remove(AllCaffees.myCoffees['picture'][index]);
                      AllCaffees.myCoffees['name']
                          .remove(AllCaffees.myCoffees['name'][index]);
                      AllCaffees.myCoffees['price']
                          .remove(AllCaffees.myCoffees['price'][index]);
                      AllCaffees.myCoffees['soni']
                          .remove(AllCaffees.myCoffees['soni'][index]);
                      deleveryCharge = 0;
                      taxes = 0;
                      setState(() {});
                    },
                    child: Container(
                      height: 120,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xff372B35),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "${AllCaffees.myCoffees['picture'][index]}"),
                                fit: BoxFit.cover,
                              ),
                              color: Color(0xff372B35),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 15, 5, 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "${AllCaffees.myCoffees['name'][index]}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Dalgona Mocha",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                      "${AllCaffees.myCoffees['price'][index]} \$"),
                                ],
                              ),
                            ),
                          ),
                          // Stack(),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              color: Color(0xff443944),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (AllCaffees.myCoffees['soni'][index] !=
                                        1) {
                                      AllCaffees.myCoffees['soni'][index] -= 1;
                                      totalSum -=
                                          AllCaffees.myCoffees['price'][index];
                                    }

                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.remove_circle,
                                    size: 30,
                                  ),
                                ),
                                Text("${AllCaffees.myCoffees['soni'][index]}"),
                                IconButton(
                                  onPressed: () {
                                    AllCaffees.myCoffees['soni'][index] += 1;
                                    totalSum +=
                                        AllCaffees.myCoffees['price'][index];
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.add_box_rounded,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(
              thickness: 2,
              endIndent: 10,
              indent: 10,
              height: 25,
              color: Color(0xff382C3A),
            ),
            Container(
                color: Color(0xff38232A),
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Apply Coupn Code",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delevery Charges"),
                  Text("\$ $deleveryCharge"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Taxes"),
                  Text("\$ $taxes"),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
              endIndent: 10,
              indent: 10,
              height: 20,
              color: Color(0xff382C3A),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Grand Total",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "\$ ${(totalSum + taxes + deleveryCharge).toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.SUCCES,
                  animType: AnimType.BOTTOMSLIDE,
                  title: 'Congratulate',
                  desc: 'Your purchase has been successfully completed',
                  btnCancelOnPress: () {
                    Navigator.pop(context);
                  },
                  btnOkOnPress: () {
                    Navigator.pop(context);
                  },
                ).show();
              },
              child: Text("PAY NOW"),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffEFE4C8),
                  padding: EdgeInsets.symmetric(horizontal: 150)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
              width: double.infinity,
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Menu_page(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.home,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CartPage()));
                    },
                    icon: const Icon(
                      Icons.shopping_cart_rounded,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_sharp,
                      size: 35,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
