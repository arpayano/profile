
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
            
            
            onPressed: (){},
          ),]
  

),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[ 
     Header(
       height: 200, 
       userName: 'Leah Castro',
       backgroundAsset: 'assets/cre2.jpg',
       userAsset: 'assets/user.png',

     ),

Container(

  color: Color.fromARGB(00, 0, 400, 0),
  padding: EdgeInsets.symmetric(vertical: 10),
  child:   Row (
  
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: <Widget>[
  
      Column(children: <Widget>[Text('Quest'), Text('500'), ],),
  
      Column(children: <Widget>[Text('Fallowers'), Text('900'),],),
  
      Column(children: <Widget>[Text('Fallowing '), Text('1200'), ],),
  
  
  
  
  
  
  
  
  
  
  
  
  
  ],),
),
//PAYANO COMIENZA NUEVAMENTE A METER MANO EL 11 DE MAYO GRACIAS A DIOS POR TODO

Container(

  color: Color.fromARGB(00, 0, 400, 0),
  padding: EdgeInsets.symmetric(vertical: 10),
  child:   Row (
  
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children: <Widget>[
  
RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add_circle), label: Text('Follow'),),

     /* actions: <Widget>[
          FlatButton.icon(
            
            icon: Icon(Icons.menu,
            color: Colors.black,
            ),
            label: Text(''),
            
            
            //onPressed: (),
          ),]*/

    //Column(children: <Widget>[Text('    '),],),
  
     // Column(children: <Widget>[Text('+Follow'),],),
  
 //     Column(children: <Widget>[Text('     '),  ],),

        
  ],),
),
// los pequeños displays Rep. Dominicana
Container(
height: 120,
decoration: BoxDecoration(
  image: DecorationImage(
image: AssetImage('assets/display01.jpg'),
fit: BoxFit.cover, 

  ),

),


),
///////////////// i want to put egypt lol jejejjejeje


Container(
height: 120,
decoration: BoxDecoration(
  image: DecorationImage(
image: AssetImage('assets/display02.jpg'),
fit: BoxFit.cover, 

  ),

),


),

/////////////////////////// i want to put other place waja waja waja 

Container(
height: 120,
decoration: BoxDecoration(
  image: DecorationImage(
image: AssetImage('assets/display04.jpg'),
fit: BoxFit.cover, 

  ),

),


),
// buttom panel

Container(
height: 50,
  color: Color.fromARGB(00, 0, 400, 0),  //80, 0, 400, 0
  padding: EdgeInsets.symmetric(vertical: 10),
  child:   Row (
  
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
    children:  <Widget>[
  
FlatButton.icon(onPressed: (){}, icon: Icon(Icons.map), label: Text(''),),
FlatButton.icon(onPressed: (){}, icon: Icon(Icons.edit), label: Text(''),),
FlatButton.icon(onPressed: (){}, icon: Icon(Icons.check_circle), label: Text(''),),
FlatButton.icon(onPressed: (){}, icon: Icon(Icons.smartphone), label: Text(''),),

             
  ],),
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
    this.height, 
    @required this.backgroundAsset,
    @required this.userAsset,
    @required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     height: this.height,  
     padding: EdgeInsets.only(bottom: 10),
decoration: BoxDecoration(
          image: DecorationImage(
          image:AssetImage(this.backgroundAsset),                   //v3 ap
          fit: BoxFit.cover,
  ),

),

child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: <Widget>[
    UserPhoto(
      assetImage: this.userAsset,  //v3.ap             //aqui tenia el puto error tenia el puto userName y es el puto userAsset que va.  ap.
    size:100,
    
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
