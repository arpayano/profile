
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
            
            
            //onPressed: (),
          ),]
  

),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[ 
     Header(
       height: 200, 
       userName: 'Leah Castro',
       backgroundAsset: 'assets/man.jpg',
       userAsset: 'assets/user.png',

     ),
  ],
),

),

  );
}

}

class Header extends StatelessWidget {
  final double height;                                    //v3 ap
  final String backgroundAsset;
  final String userAsset;
  final String userName;


  const Header({
    Key key,
    this.height=200, 
    @required this.backgroundAsset,
    @required this.userAsset,
    @required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: this.height,  
     padding: EdgeInsets.only(bottom: 15),
decoration: BoxDecoration(
image: DecorationImage(
           image:AssetImage(this.backgroundAsset),                   //v3 ap
          fit: BoxFit.cover,

  ),

),
child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    UserPhoto(assetImage: this.userName,  //v3.ap
    size:70,
    
    ),                                                                //User photo Widget.  AP
    Text(  
'@${this.userName}',

style: TextStyle(
  color: Colors.black ),
    ),
  ],),
    );
  }
}
// i created this widget from  the code line before then i need to add two parametor  the first is assetImage and the other is the size. AP
class UserPhoto extends StatelessWidget {                                         //User photo code block. ap.
final String assetImage;
final double size;

  const UserPhoto({
    Key key,
    @required this.assetImage, 
    this.size=100, //  interesante se pedira como requerido pero es un parametro nombrado. ap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,    //v2 Ap
      height: this.size,   //v2 ap
      decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage(this.assetImage), //  i sent the parameter. ap
          fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 4,
            )
        ),
        margin: EdgeInsets.only(bottom: 5), 
    );
  }
}
