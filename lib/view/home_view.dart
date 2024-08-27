import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int count = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: const Text('Hello'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber[600],
          onPressed: () {
            add();
            setState(() {});
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}

add() {
  print('button pressed');
  count++;
}
