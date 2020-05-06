
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/View/login.dart';
import 'package:flutterapp/View/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lime,
//        appBar: AppBar(
//          leading: Icon(
//            Icons.add_shopping_cart,
//            size: 50.0,
//          ),
//          centerTitle: true,
//          backgroundColor: Colors.green,
//          title: Text("MBCET TVM",
//              style: TextStyle(fontSize: 25.0, letterSpacing: 2.0)),
//        ),
        body:Register(),
      ),
    );
  }
}
