import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  Color _containerColor = Colors.amber; // Initial color
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startColorChange();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startColorChange() {
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _containerColor =
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          color: _containerColor,
          duration: const Duration(seconds: 1),
          child: const Center(
            child: Text("Animated Container"),
          ),
        ),
      ),
    );
  }
}
