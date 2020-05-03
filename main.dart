import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          leading: Icon(
            Icons.add_shopping_cart,
            size: 50.0,
          ),
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text("MBCET TVM",
              style: TextStyle(fontSize: 25.0, letterSpacing: 2.0)),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              //Text("Username"),
              TextField(
                decoration: InputDecoration(
                  hintText:"Enter Username "
                ),
              ),
              //Text("Password"),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Password"
                ),
              ),
              RaisedButton(
                color: Colors.green,
                child: Text("Login",style: TextStyle(color: Colors.white),),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
