import 'package:flutter/material.dart';

import 'app_screens/first_screen.dart';

void main() => runApp(MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First Flutter App",
      home: new Scaffold(
        appBar: AppBar(
            title: Text(
                "My First Flutter App",
                style: TextStyle(color:Colors.white,fontSize: 20.0)
            )
        ),
        body: FirstScreen()
      ),
    );
  }

}