import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.cyanAccent,
      child:  Center(
        child: Text(
          generateLuckyNumber(),
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontSize: 40.0),
        ),
      ),
    );
  }

  String  generateLuckyNumber(){
    return "Random Number : ${Random().nextInt(10)}";
  }

}