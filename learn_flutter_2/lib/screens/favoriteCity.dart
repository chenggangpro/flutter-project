import 'package:flutter/material.dart';

class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FavoriteState();
  }

}

class FavoriteState extends State<FavoriteCity>{

  String name = "";
  String item;
  var currencies = ["Rupees","Dollor","Pounds"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFul App Bar"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String value){
                setState(() {
                  name = value;
                });
              },
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: "FontAwesome",
                color: Colors.red
              ),
            ),
            Text(
              getDefaultValue(item),
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "FontAwesome",
                  color: Colors.lightBlue
              ),
            ),
            DropdownButton<String>(
              items: currencies.map((value){
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                      ),
                      Text(
                        value,
                        style: TextStyle(
                            color: Colors.deepPurple
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  )
                );
              }).toList(),

              onChanged: (value){
                setState(() {
                  item = value;
                });
              },
              value: item,
              icon: Icon(Icons.add_circle_outline),
            ),
          ],
        ),
      ),
    );
  }

  String getDefaultValue(value){
    if(value == null){
      return "";
    }
    return "Drop Button => $value";
  }
}