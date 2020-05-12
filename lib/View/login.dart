import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/View/contact.dart';
import 'package:flutterapp/View/counter.dart';

class MyLog extends StatelessWidget {
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Text("Username"),
              TextField(
                controller: username,
                decoration: InputDecoration(prefixIcon: Icon(Icons.perm_identity),
                     border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ), hintText: "Enter the Username "),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Text("Password"),
              TextField(
                controller: password,
                decoration: InputDecoration( prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ), hintText: "Enter Password"),
              ),
              SizedBox(
                height: 10.0,
              ),

              GestureDetector(

                  onTap: ()
                  {
                    var getusername=username.text;
                    var getpass=password.text;
                  if(getusername=="admin" && getpass=="12345")
                    {

                    Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>MyCounterApp()

                    ));
                    };
                  },

                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.teal,
                        Colors.lime,
                      ]
                      ),
                      borderRadius:BorderRadius.circular(15)
                  ),

                  height: 50.0,
                  width: double.infinity,
                  child:Center(
                    child: Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 23.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

