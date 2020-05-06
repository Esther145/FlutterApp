 import 'package:flutter/material.dart';
import 'package:flutterapp/View/login.dart';

class Register extends StatelessWidget {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  TextEditingController rollno=TextEditingController();
  TextEditingController adno=TextEditingController();
  TextEditingController username=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.teal,
            Colors.lime,
          ]
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height:150.0),
            Container(

              decoration: BoxDecoration(
                  color:Colors.white,
              borderRadius:BorderRadius.only(
                topLeft: Radius.circular(80.0),
                topRight:Radius.circular(80.0)
              )
              ),
              height: MediaQuery.of(context).size.height-150,
              child: Container(
                margin:EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height:70.0,),
                        TextField(
                          controller: namecontroller,
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            border: OutlineInputBorder()
                          ),

                        ),
                   SizedBox(height:10.0,),
                   TextField(
                     controller: rollno,
                     decoration: InputDecoration(
                       hintText: "Enter Roll Number",
                           border:OutlineInputBorder()
                     ),
                   ),
                      SizedBox(height:10,),
                      TextField(
                        controller: adno,
                        decoration: InputDecoration(
                          hintText: "Enter the Adno number",
                          border:OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                          hintText: "Enter the Username",
                          border: OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      TextField(
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          border:OutlineInputBorder()
                        ),
                      ),
                      SizedBox(height: 10.0,),

                      
                      GestureDetector(
                        onTap:() {
                          var getname=namecontroller.text;
                          var getroll=rollno.text;
                          var getadno=adno.text;
                          var getuser=username.text;
                          var getpass=passwordcontroller.text;
                          print(getname);
                          print(getadno);
                          print(getroll);
                          print(getuser);
                          print(getpass);
                        },
                        child: Container(
                          decoration:BoxDecoration(
                           gradient: LinearGradient(colors: [

                             Colors.teal,
                             Colors.lime,
                           ]
                           ),
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          height: 55.0,
                          width:double.infinity,
                          child: Center(
                            child: Text(
                              "REGISTER",
                              style: TextStyle(fontSize: 23,color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder:(context)=>MyLog()

                          ));
                        },
                        child: Container(
                          height: 55.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.teal,
                              Colors.lime,
                            ]
                             ),
                            borderRadius: BorderRadius.circular(15.0)
                          ),


                          child: Center(
                            child: Text(
                               "Go to Login Page",style: TextStyle(fontSize: 23.0,color: Colors.white),
                            ),
                          ),
                        ),
                      )


                    ],
                  ),
                ),
              ),

            )
          ],
        ),
      )
    );
  }
}
