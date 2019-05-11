import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
//        margin: EdgeInsets.only(left:10.0,top: 20.0),
        padding: EdgeInsets.only(left:10.0,top: 40.0),
        alignment: Alignment.center,
        color: Colors.pinkAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text(
                  "Flight1",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      color: Colors.white,
                      fontFamily: "FontAwesome"
                  ),
                  textDirection: TextDirection.ltr,
                ),),
                Expanded(child: Text(
                  "Flight2",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 55.0,
                      color: Colors.greenAccent,
                      fontFamily: "FontAwesome"
                  ),
                  textDirection: TextDirection.ltr,
                ),),
                Expanded(child: Text(
                  "Flight3",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 75.0,
                      color: Colors.lightBlue,
                      fontFamily: "FontAwesome"
                  ),
                  textDirection: TextDirection.ltr,
                ),),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text(
                  "Flight3",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      color: Colors.white,
                      fontFamily: "FontAwesome"
                  ),
                  textDirection: TextDirection.ltr,
                ),),
                Expanded(child: Text(
                  "Flight4",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 55.0,
                      color: Colors.greenAccent,
                      fontFamily: "FontAwesome"
                  ),
                  textDirection: TextDirection.ltr,
                ),),
                Expanded(child: Text(
                  "Flight5",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 75.0,
                      color: Colors.lightBlue,
                      fontFamily: "FontAwesome"
                  ),
                  textDirection: TextDirection.ltr,
                ),),
              ],
            ),
            ImageAssert(),
            CustomButton()
          ],
        )
      ),
    );
  }

}

class ImageAssert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Image(
          image: AssetImage("images/IMG_0818.jpg")
      ),
    );
  }
  
}

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 150,
      height: 50,
      child: RaisedButton(
          onPressed: () => action(context),
          color: Colors.amber,
          child: Text(
            "Button",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.deepPurpleAccent,
              fontFamily: "FontAwesome"
            ),
          ),
          elevation: 6.0,
      ),
    );
  }

  void action(BuildContext context){
    var alert = AlertDialog(
      title: Text(
          "Alert"
      ),
      content: Text(
          "Notice Alert!",
          style: TextStyle(
            color: Colors.red
          ),
      ),
    );

    showDialog(
      context:context,
      builder: (BuildContext context) => alert
    );
  }

}