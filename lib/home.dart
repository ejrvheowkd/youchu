import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      home: WidgetDemo(),
    ));

class WidgetDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Home();
}

class Home extends State<WidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.red,
              ),
              title: Text("home", style: TextStyle(color: Colors.red))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.red,
              ),
              title: Text("Search", style: TextStyle(color: Colors.red))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.alarm,
                size: 30,
                color: Colors.red,
              ),
              title: Text("alarm")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
                size: 30,
                color: Colors.red,
              ),
              title: Text("list"))
        ],
      ),
    );
  }
}
