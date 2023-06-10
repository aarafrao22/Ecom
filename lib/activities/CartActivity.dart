import 'package:flutter/material.dart';
import 'package:flutter_commerce/activities/FoodDetailActivity.dart';

import '../models/FoodModel.dart';

class CartActivity extends StatefulWidget {
  const CartActivity({super.key});

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
        name: "Thai Spagetti",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img_1.png"),
    FoodModel(
        name: "Grilled Skewers",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img.png"),
    FoodModel(
        name: "Thai Spagetti",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img_1.png"),
    FoodModel(
        name: "Grilled Skewers",
        subname: "Spicy Mutton",
        price: "36.00",
        imageUrl: "res/img.png"),
    FoodModel(
        name: "Thai Spagetti",
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
      body: Container(
        // Content of the bottom sheet
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        child: Center(
            child: Column(
          children: [
            const Align(
              alignment: Alignment.topCenter,
            ),
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
                children: const [
                  Text(
                    "Cart List",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
                  ),
                ],
              ),
            ),
            SizedBox(
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
                      margin: const EdgeInsets.all(16),
                      // padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(26)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            foods[index].imageUrl,
                            height: 100,
                            width: 100,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
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
                                // color: index == 0 ? Colors.amber : Colors.grey.shade200,
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(2, 8, 2, 4),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(2, 4, 2, 8),
                                  child: Icon(
                                    Icons.minimize,
                                    color: Colors.white,
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
                children: const [
                  Icon(
                    Icons.percent,
                    color: Colors.redAccent,
                  ),
                  Text("Do you have any discount code?")
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
