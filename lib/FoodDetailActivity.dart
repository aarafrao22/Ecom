import 'package:flutter/material.dart';
import 'package:flutter_commerce/main.dart';

import 'FoodModel.dart';

class FoodDetailActivity extends StatefulWidget {
  const FoodDetailActivity({super.key});

  @override
  State<FoodDetailActivity> createState() => _FoodDetailActivityState();
}

class _FoodDetailActivityState extends State<FoodDetailActivity> {
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
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        child: Center(
            child: Column(
          children: [
            const Align(
              alignment: Alignment.topCenter,
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8),
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
                  ),
                  const Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Container(
              // margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                "res/img.png",
              ),
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
                                      fontSize: 14, fontWeight: FontWeight.bold),
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
                            padding:
                            const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Icon(
                                  Icons.minimize_outlined,
                                  color: Colors.black,
                                  size: 18.0,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "03",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 18.0,
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
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Spicy Chicken\nRicemix",
                      style: TextStyle(
                          fontSize: 24,
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
                  padding: const EdgeInsets.all(8),
                  child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.",
                style: TextStyle(color: Colors.grey),
              ),
                ),
            Container(
                  margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Toping for You",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Clear",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.redAccent),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
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
                        Image.asset(
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
          ],
            )),
      ),
    );
  }
}