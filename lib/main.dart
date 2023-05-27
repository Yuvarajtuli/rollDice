import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.redAccent.shade700,
          title: Center(
            child: Text(
              'Dice'.toUpperCase(),
              style: const TextStyle(
                letterSpacing: 3,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: const Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftNum = Random().nextInt(6) + 1;
  int rightNum = Random().nextInt(6) + 1;
  void randFace() {
    setState(() {
      leftNum = Random().nextInt(6) + 1;
      rightNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                randFace();
              },
              child: Image.asset('images/a$leftNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                randFace();
              },
              child: Image.asset('images/b$rightNum.png'),
            ),
          )
        ],
      ),
    );
  }
}
