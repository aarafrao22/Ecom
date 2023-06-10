import 'package:flutter/material.dart';
import 'package:flutter_commerce/activities/FoodDetailActivity.dart';
import 'package:flutter_commerce/models/FoodModel.dart';
import 'package:flutter_commerce/models/Resource.dart';

import 'activities/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
