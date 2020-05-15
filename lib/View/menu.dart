import 'package:flutter/material.dart';
import 'package:flutterapp/View/contact.dart';
import 'package:flutterapp/View/counter.dart';
import 'package:flutterapp/View/page1.dart';
import 'package:flutterapp/View/page2.dart';
import 'package:flutterapp/View/page3.dart';
import 'package:flutterapp/View/register.dart';
import 'package:flutterapp/View/todo.dart';

class MyMenu extends StatefulWidget {
  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {

  @override
  int _mycurrentindex=0;
  final mypages=[Page1(),Page2(),Page3()];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mypages[_mycurrentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
            currentIndex: _mycurrentindex,
            //backgroundColor: Colors.green,
            items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),
                title:Text("Home"),
              backgroundColor: Colors.blue,
            ),
              BottomNavigationBarItem(icon: Icon(Icons.view_list),
                  title: Text("View All"),
              backgroundColor: Colors.deepPurpleAccent,
              ),
              BottomNavigationBarItem(icon: Icon(Icons.search),
                  title: Text("Search"),
                backgroundColor: Colors.green,
              ),
        ],
          onTap: (index)
          {
            setState(() {
              _mycurrentindex=index;
            });
          },
        ),
      ),
    );
  }
}
