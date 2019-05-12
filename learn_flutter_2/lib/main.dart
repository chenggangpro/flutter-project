import 'package:flutter/material.dart';
import 'package:learn_flutter_2/screens/favoriteCity.dart';
import 'package:learn_flutter_2/screens/home.dart';

void main() => runApp(MaterialApp(
  title: "Exploring UI widgets",
  debugShowCheckedModeBanner: false,
//  home: Home(),
  home: Scaffold(
    appBar: AppBar(
      title: Text("AppBar"),
    ),
//    body: longListView(),
    body: FavoriteCity(),
    floatingActionButton: FloatingActionButton(
        onPressed: ()=>debugPrint("Tap Button>>>"),
        child: Icon(Icons.add),
        tooltip: "Add One More Item",
    ),
  ),
));

void showSnackBar(BuildContext context,String item){
  var snackBar = SnackBar(
    content: Text("SnackBar Content --> $item"),
    backgroundColor: Colors.cyanAccent,
    duration: Duration(
      seconds: 1
    ),
    action: SnackBarAction(
        label: "Cancel",
        onPressed: ()=>debugPrint("Cancel $item"),
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.launch),
        title: Text("Lanuch"),
        subtitle: Text("Lanuch View!"),
        trailing: Icon(Icons.all_inclusive),
        onTap: ()=>debugPrint("tap Lanuch List"),
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Laptop"),
      ),
      Text(
        "Text In List"
      ),
      Container(
        color: Colors.lightBlue,
        height: 50.0,
      ),
    ],
  );

  return listView;
}

List<String> getListElements(){
  return List<String>.generate(1000, (counter)=>"Item $counter");
}

Widget longListView(){
  var items = getListElements();
  return  ListView.builder(
      itemBuilder: (context,index){
          return ListTile(
            leading: Icon(Icons.arrow_forward),
            title: Text("Title-> ${items[index]}"),
            onTap: ()=>showSnackBar(context,items[index]),
          );
      }
  );
}