
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
    
title: Text(
"Work in a Profile",

),

  ),
),

  );
}

}
