import 'package:flutter/material.dart';
import 'package:flutter_commerce/activities/CartActivity.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_database/firebase_database.dart';
import '../models/FoodModel.dart';
import 'MyHomePage.dart';

class FoodDetailActivity extends StatefulWidget {
  const FoodDetailActivity({super.key});

  @override
  State<FoodDetailActivity> createState() => _FoodDetailActivityState();
}

class _FoodDetailActivityState extends State<FoodDetailActivity> {
  FirebaseDatabase database = FirebaseDatabase.instance;

  // final List<FoodModel> foods = [
  //   FoodModel(
  //       name: "Grilled Skewers",
  //       subname: "Spicy Mutton",
  //       price: "36.00",
  //       imageUrl: "res/img.png"),
  //   FoodModel(
  //       name: "Thai Spagetti",
  //       subname: "Spicy Mutton",
  //       price: "36.00",
  //       imageUrl: "res/img.png"),
  //   FoodModel(
  //       name: "Grilled Skewers",
  //       subname: "Spicy Mutton",
  //       price: "36.00",
  //       imageUrl: "res/img.png"),
  //   FoodModel(
  //       name: "Thai Spagetti",
  //       subname: "Spicy Mutton",
  //       price: "36.00",
  //       imageUrl: "res/img.png"),
  //   FoodModel(
  //       name: "Grilled Skewers",
  //       subname: "Spicy Mutton",
  //       price: "36.00",
  //       imageUrl: "res/img.png"),
  //   FoodModel(
  //       name: "Thai Spagetti",
  //       subname: "Spicy Mutton",
  //       price: "36.00",
  //       imageUrl: "res/img.png"),
  //   FoodModel(
  //       name: "Grilled Skewers",
  //       subname: "Spicy Mutton",
  //       price: "36.00",
  //       imageUrl: "res/img.png"),
  // ];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        child: SafeArea(
          child: Center(
              child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 6,
                    shadowColor: Colors.grey.shade50,
                    child: InkWell(
                      onTap: () {
                        // Button onPressed logic
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                              child: const Icon(
                                Icons.arrow_back_ios,
                                size: 18.0,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MyHomePage(title: "title"),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 24,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 260,
                    width: 260,
                    // margin: const EdgeInsets.all(8.0),
                    child: Image.network(
                      foods[0].imageUrl,
                    ),
                  ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          child: InkWell(
                            onTap: () {
                              // Button onPressed logic
                            },
                            child: Padding(
                              padding:
                              const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18.0,
                                  ),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.amber,
                          // Replace "Colors.blue" with the desired color
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28)),
                          child: InkWell(
                            onTap: () {
                              // Button onPressed logic
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      updateCounterSubtract();
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Icon(
                                        Icons.minimize_outlined,
                                        color: Colors.black,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(
                                  //   width: 4,
                                  // ),
                                  Text(
                                    count.toString(),
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // const SizedBox(
                                  //   width: 4,
                                  // ),
                                  GestureDetector(
                                    onTap: () {
                                      updateCounterAdd();
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.all(12),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                    // padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text(foods[0].name,
                        style: const TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                                  const Icon(
                                    Icons.alarm,
                                    color: Colors.redAccent,
                                    size: 18.0,
                                  ),
                                  Text(
                                    " 10-15 Mins",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey.shade700),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Sed do eiusmod tempor incico laboris. Duis aute irure dolor in velit esse cillum dolore.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    // padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Toping for You",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Clear",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.redAccent),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(18)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.network(
                            foods[index].imageUrl,
                            height: 66,
                            width: 66,
                          ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                      // padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Total Price",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("\$ ",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900)),
                                    Text("36.00",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 26,
                                            fontWeight: FontWeight.w600))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Card(
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (
                                          context) => const CartActivity(),
                                    ),
                                  );
                                  Fluttertoast.showToast(
                                    msg: 'Added to Cart',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.grey[600],
                                    textColor: Colors.white,
                                    fontSize: 16.0, // Font size of the toast message
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      16, 16, 16, 16),
                                  // Replace with your desired color or widget
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: const [
                                      Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        " Go To Cart",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ],
                                  ), // Replace with your desired color or widget
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                ],
              )),
        ),
      ),
    );
  }

  void updateCounterAdd() {
    int a = count;
    a = a + 1;
    setState(() {
      count = a;
    });
  }

  void updateCounterSubtract() {
    int a = count;
    a = a - 1;
    setState(() {
      count = a;
    });
  }
}
