import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  var mytask=[];
  TextEditingController mytaskcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            
            children: <Widget>[
              
              SizedBox(height: 40.0,),
              TextField(
                
                controller: mytaskcontroller,
                decoration: InputDecoration(
                  hintText: "Enter Task",
                  border: OutlineInputBorder(),
                ),
                ),
          RaisedButton(
              child: Text("Add List",style: TextStyle(color: Colors.white),),
              onPressed: (){
            var tasks=mytaskcontroller.text;
            setState(() {
              mytask.add(tasks);
            });

          },
          color:Colors.green,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount:mytask.length==null?0:mytask.length ,
              itemBuilder: (context,index)
              {
                return Card(
                  elevation: 9.0,
                  child: ListTile(
                    leading: Icon(Icons.add_location,color: Colors.green,size: 40.0,),
                    trailing: GestureDetector(
                      onTap: ()
                        {
                          setState(() {
                            mytask.removeAt(index);
                          });
                        },

                        child: Icon(Icons.delete,color: Colors.green,size:40.0)

                    ),
                    title: Text(mytask[index].toString()),
                  ),
                );
              }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
