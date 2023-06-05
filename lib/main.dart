import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
              suffixIcon: const Icon(Icons.filter_alt),
              filled: true,
              labelText: "Search Food",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
            )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
