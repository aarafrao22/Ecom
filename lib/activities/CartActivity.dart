import 'package:flutter/material.dart';
import 'package:flutter_commerce/activities/FoodDetailActivity.dart';

import '../models/FoodModel.dart';

class CartActivity extends StatefulWidget {
  const CartActivity({Key? key}) : super(key: key);

  @override
  State<CartActivity> createState() => _CartActivityState();
}

class _CartActivityState extends State<CartActivity> {
  final List<FoodModel> foods = [
    FoodModel(
        name: "Grilled Skewers",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img.png"),
    FoodModel(
        name: "Thai Spaghetti",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img_1.png"),
    FoodModel(
        name: "Grilled Skewers",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img.png"),
    FoodModel(
        name: "Thai Spaghetti",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img_1.png"),
    FoodModel(
        name: "Grilled Skewers",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img.png"),
    FoodModel(
        name: "Thai Spaghetti",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img_1.png"),
    FoodModel(
        name: "Grilled Skewers",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Container(
          // margin: const EdgeInsets.all(8),
          // padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  child: Row(
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
                            child: Container(
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
                                              const FoodDetailActivity(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.delete,
                        color: Colors.black,
                        size: 24,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cart List",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 28),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 220, // Set the desired height of the ListView
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // Define your navigation logic here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FoodDetailActivity(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(26)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                foods[index].imageUrl,
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      foods[index].name,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$${foods[index].price}",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(14)),
                                child: Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2, 8, 2, 4),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(2, 4, 2, 8),
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 16,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.percent,
                          color: Colors.redAccent,
                        ),
                      ),
                      Text("Do you have any discount code?")
                    ],
                  ),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtotal",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                            Text(
                              "\$ 96.00",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Est.Tax",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                            Text(
                              "2.00",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                            Text(
                              "Free",
                              style: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 18),
                            ),
                          ],
                        ),
                        Container(
                          height: 0.6,
                          width: double.infinity,
                          // Adjust the width as needed
                          color: Colors
                              .grey.shade600, // Set the desired line color
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Total",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Text(
                              "\$ 98.00",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              padding: const EdgeInsets.all(16),
                              elevation: 0,
                              // Adjust the padding as needed
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Checkout',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(width: 28),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.black,
                                ),
                                // Adjust the spacing between the icon and text
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
