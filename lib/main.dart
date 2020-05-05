
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
    
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0.0,
    title: Text("User Profile",

style: TextStyle(color: Colors.black),
), 
   
    
        actions: <Widget>[
          FlatButton.icon(
            
            icon: Icon(Icons.menu,
            color: Colors.black,
            ),
            label: Text(''),
            
            
            //onPressed: () => widget.toggleView(),
          ),]
  

),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Container(
      height:  200,  
decoration: BoxDecoration(
image: DecorationImage(
            image:AssetImage('assets/cre2.jpg'),
           fit: BoxFit.cover,

  ),

),
child: Column(
  children: <Widget>[
    Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/user.png'),
          fit: BoxFit.cover,
          ),
        ),
    ),
  ],),
    ),
  ],
),

),

  );
}

}
