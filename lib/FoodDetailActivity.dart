import 'package:flutter/material.dart';

class FoodDetailActivity extends StatefulWidget {
  const FoodDetailActivity({super.key});

  @override
  State<FoodDetailActivity> createState() => _FoodDetailActivityState();
}

class _FoodDetailActivityState extends State<FoodDetailActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8),
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
                            children: const [
                              Icon(Icons.arrow_back_ios),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.heart_broken)
                  ],
                ),
                Image.asset(
                  "res/img.png",
                ),
              ],
            )),
      ),
    );
  }
}
