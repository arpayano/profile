
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//1.funcion main
void main(){

runApp(MyApp());

}

class MyApp extends StatelessWidget{
 @override
Widget build(BuildContext context) {
  return MaterialApp(
home: Scaffold(
  
  appBar: AppBar(
    backgroundColor: Colors.white,
    
title: Text("User Profile",
style: TextStyle(color: Colors.black),




),
),
body: Column(
  children: <Widget>[
    Container(
      height:  200,
decoration: BoxDecoration(
image: DecorationImage(
            image:AssetImage('assets/cre2.jpg')

  ),

),
    ),
  ],
),

),

  );
}

}
