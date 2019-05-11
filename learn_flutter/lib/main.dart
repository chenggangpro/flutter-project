import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(
      title: "My First Flutter App",
      home: new Scaffold(
        appBar: AppBar(
            title: Text(
              "My First Flutter App",
              style: TextStyle(color:Colors.black,fontSize: 20.0)
            )
        ),
        body: new Material(
          color: Colors.cyanAccent,
          child:  Center(
            child: Text(
              "Hello Flutter",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 40.0),
            ),
          ),
        ),
      ),
      )
  );
}