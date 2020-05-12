import 'package:flutter/material.dart';

class MyCounterApp extends StatefulWidget {
  @override
  _MyCounterAppState createState() => _MyCounterAppState();
}

class _MyCounterAppState extends State<MyCounterApp> {
  int _counter=7;
  void _incre()
  {
    setState(() {
      _counter++;
    });
  }
  void _decre()
  {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/back.jpg"),
              fit: BoxFit.fill,
            )
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                        child:Text(
                          "Increement"
                        ),
                          onPressed: ()
                      {
                        _incre();

                      }
                      ),
                      RaisedButton(
                        child: Text(
                          "Decreement"
                        ),
                          onPressed: ()
                      {
                        _decre();
                      }
                      ),
                      Text(_counter.toString(),style: TextStyle(fontSize: 50.0),)
                    ],
                  )
              )
            ],
          ),

        ),

      ),
    );
  }
}
