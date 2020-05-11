import 'dart:ui';

import 'package:flutter/material.dart';

class Mylist extends StatelessWidget {
  var data=[
    {"name":"Finn Wittrock","age":35,"image":"images/finn.png"},{"name":"Wes Bentley" ,"age":41,"image":"images/wes.png"},{"name":"Evan Peters","age":33,"image":"images/evan.png"},
    {"name":"Matt Bomer","age":41,"image":"images/matt.png"},



  ]
  ;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView.builder(

              itemCount: data.length,
              itemBuilder: (context,index)

              {



                return Card(
                    elevation: 12.0 ,
                    child: ListTile(
                      leading: ClipOval(
                          child: Image(
                            height: 50.0,
                              width: 50.0,
                              image: AssetImage(data[index]["image"]))),

                        trailing: int.parse(data[index]["age"].toString())>40?Icon(Icons.call):Icon(Icons.clear),
                title: Text("\nName: "+data[index]["name"]+"\nAge: "+data[index]["age"].toString()+"\n\n")
                ),
                );

              }
          ),
        ),
      ),
    );
  }
}
