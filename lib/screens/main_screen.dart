import 'package:flutter/material.dart';
import 'dart:math';

import '../utils/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String numDado1 = 'Null';
  String numDado2 = 'Null';
  int total=0;
  
  @override
  Widget build(BuildContext context) {
    var alto = MediaQuery.of(context).size.height;
    var ancho = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: grisMuyClaro,
      appBar: AppBar(
        backgroundColor: grisMuyClaro,
        title: const Text('Pantalla Principal'),
      ),
      body: Column(
        children: [
          // Container(height:alto*0.2,color: Colors.blue,),
          Expanded(
            child: GestureDetector(
              onTap: () {
          
                Random random = Random();
                int randomNumberDado1 = random.nextInt(6) + 1;
                int randomNumberDado2 = random.nextInt(6) + 1;
          
                numDado1 = randomNumberDado1.toString();
                numDado2 = randomNumberDado2.toString();
                total= randomNumberDado1+randomNumberDado2;
                setState(() {});
          
              },
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: ancho*0.4,
                      width: ancho*0.4,
                      decoration: const BoxDecoration(color: Colors.red),
                      child: Center(
                        child: Text(
                          numDado1,
                          style:TextStyle(
                            fontSize: 50,
                          )
                        )
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                     Container(
                      height: ancho*0.40,
                      width: ancho*0.40,
                      decoration: const BoxDecoration(color: Colors.red),
                      child: Center(
                        child: Text(
                          numDado2,
                          style: TextStyle(
                            fontSize: 50),
                          )
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child:Container(
              height: alto*0.1,
              width: ancho*0.8,
              decoration: BoxDecoration(
                color: blancoPuro,
                border: Border.all(
                  color: negroAbsoluto,
                  width: 2.0),
              ),
              child: Center(
                child: Text(
                  total.toString(),
                  style: TextStyle(
                    fontSize: alto*0.05
                  ),
                )
              ),
              margin: EdgeInsets.only(bottom: alto*0.08),
            )
          ),
        ],
      ),
    );
  }
}