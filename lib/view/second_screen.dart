import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

int count = 0;

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.yellow[200],
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          '$count',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 50,
          ),
          FloatingActionButton(
              backgroundColor: Colors.amber[600],
              onPressed: () {
                add();
                setState(() {});
              },
              child: const Icon(Icons.plus_one)),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ThirdScreen');
              },
              child: const Text('Next screen')),
        ],
      ),
    );
  }
}

add() {
  print('button pressed');
  count++;
}
