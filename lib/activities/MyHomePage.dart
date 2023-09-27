import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../models/FoodModel.dart';
import '../models/Resource.dart';
import 'FoodDetailActivity.dart';

List<FoodModel> foods = [];

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<FoodModel>>(
      future: getData(), // The future that fetches data
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting for the response, display a loading indicator
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // If there's an error, display an error message
          return Text('Error: ${snapshot.error}');
        } else {
          // If the data has been successfully fetched, display it
          final data = snapshot.data;
          foods = data!;
          return SizedBox(
            height: 260,
            // Set the desired height of the horizontal list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foods.length,
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
                    width: 160,
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(26)),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Center the items horizontally
                      children: [
                        Image.network(
                          foods[index].imageUrl,
                          height: 140,
                          width: 140,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          foods[index].name,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          foods[index].subname,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$ ${foods[index].price}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(Icons.favorite)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }

  Future<List<FoodModel>>? getData() async {
    List<FoodModel> foodLocal = [];
    final ref = FirebaseDatabase.instance.ref('producst');
    final snapshot = await ref.get();

    if (snapshot.exists) {
      final data = snapshot.value;

      if (data is Map) {
        String name = "", price = "", subname = "", url = "";
        // Iterate through the data if it's a map
        data.forEach((key, value) {
          switch (key) {
            case "price":
              price = value;
              break;
            case "name":
              name = value;
              break;
            case "subname":
              subname = value;
              break;
            case "imageUrl":
              url = value;
              break;
          }
        });
        foodLocal.add(FoodModel(
          name: name,
          subname: subname,
          price: price,
          imageUrl: url,
        ));
      } else {
        print('Data is not in the expected format.');
      }
    } else {
      print('No data available.');
    }

    return foodLocal;
  }
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseDatabase database = FirebaseDatabase.instance;

  final List<Resource> items = [
    Resource(text: "Pizza", imageUrl: "res/img_1.png"),
    Resource(text: "Burger", imageUrl: "res/img.png"),
    Resource(text: "Salad", imageUrl: "res/img_1.png"),
    Resource(text: "Pizza", imageUrl: "res/img.png"),
    Resource(text: "Pizza", imageUrl: "res/img.png"),
    Resource(text: "Pizza", imageUrl: "res/img.png"),
  ];
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    // getData();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Search Food",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.supervised_user_circle),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          // padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Food',
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                          children: const [
                            Icon(Icons.settings),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                // Set the desired height of the horizontal list
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedItemIndex = index;
                        });
                      },
                      child: Container(
                        width: 100,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          // color: index == 0 ? Colors.amber : Colors.grey.shade200,
                            color: selectedItemIndex == index
                                ? Colors.amber
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(26)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // Center the items horizontally
                          children: [
                            Image.asset(
                              "res/img.png",
                              height: 24,
                              width: 24,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              items[index].text,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              MyWidget(),
              Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Favourite Restaurants",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 220,
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(26)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            foods[index].imageUrl,
                            height: 80,
                            width: 80,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                foods[index].name,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                ],
                              ),
                              Text(
                                foods[index].subname,
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
      BottomNavigationBar(selectedItemColor: Colors.orange, items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ]),
      drawer: Drawer(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
