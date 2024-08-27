import 'package:flutter/material.dart';
import 'package:provider/view/first_screen.dart';
import 'package:provider/view/second_screen.dart';
import 'package:provider/view/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: FirstScreen(),
      initialRoute: '/FirstScreen',
      routes: {
        '/FirstScreen': (context) => const FirstScreen(),
        '/SecondScreen': (context) => const SecondScreen(),
        '/ThirdScreen': (context) => const ThirdScreen()
      },
    );
  }
}
