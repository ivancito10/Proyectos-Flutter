import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{

  var titulo = Text('Bolivia Travel', style: TextStyle(
    color: Colors.black,
  ),);
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: titulo,
          leading: Icon(Icons.menu, color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: <Widget>[
            Icon(Icons.merge_type,
             color: Color(0xFFc6c6c6),),
            Icon(Icons.message, 
            color: Color.fromRGBO(200, 65, 100, 1),),
            Icon(Icons.money_off, color: Colors.black,),
          ],
        ),
        body: Center(
          child: Text("Hola Mundo"),
        ),
      ),
    );

  }
}