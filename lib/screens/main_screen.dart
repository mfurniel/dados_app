import 'package:flutter/material.dart';
import 'dart:math';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String numDado1 = 'Null';
  String numDado2 = 'Null';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla Principal'),
      ),
      body: GestureDetector(
        onTap: () {

          Random random = Random();
          int randomNumberDado1 = random.nextInt(6) + 1;
          int randomNumberDado2 = random.nextInt(6) + 1;

          numDado1 = randomNumberDado1.toString();
          numDado2 = randomNumberDado2.toString();

          setState(() {});

        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(color: Colors.red),
                child: Center(child: Text(numDado1)),
              ),
              const SizedBox(
                width: 20,
              ),
               Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(color: Colors.red),
                child: Center(child: Text(numDado2)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}