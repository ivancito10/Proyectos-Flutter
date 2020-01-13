import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _myAppBar(),
        body: SingleChildScrollView(
                  child: Container (
            width: double.infinity,
            //color: Colors.red,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                 // Text("hola mundo")
                 _item("hola1",'og.jpg'),
                 _item("hola2",'og2.jpg'),
                 _item("hola3",'og3.jpg'),
                 _item("hola4",'og4.jpg'),
                 _item("hola5",'og5.gif'),
                 _item("hola6",'og6.jpg'),
                 _item("hola7",'og7.png'),
                ],
              )
            ),
          ),
        ),
      );
  }
}
Widget _myAppBar(){
  return AppBar(
          title: Text("Bolivia Travel"),
          leading: Icon(Icons.menu, color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0.0,
          actions: <Widget>[
            Icon(Icons.merge_type,
             color: Color(0xFFc6c6c6),),
            Icon(Icons.message, 
            color: Color.fromRGBO(200, 65, 100, 1),),
            Icon(Icons.money_off, color: Colors.black,),
          ],
        );
}

Widget _item(String nombre, String imagen){
  //var texStyle = TextStyle(fontSize: 55);
  return Card(
    margin: EdgeInsets.only(
      top: 25,
      right: 10,
      left: 10
    ),
    elevation: 15 ,
    child: Column(
      children: <Widget>[
        Container(
          color: Colors.indigo,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
              nombre,style: TextStyle(fontSize: 35),
              ),
              Icon(Icons.star,size: 35,),
            ],
          ),
        ),
        
        Image(
          height: 200,
          fit: BoxFit.cover,
          width: double.infinity,
          image: AssetImage('assets/images/$imagen'),
        ),
        //Image.asset('assets/images/og.jpg'),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Text(
            nombre,
            style: TextStyle(
              fontFamily: 'Nose',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 40,
            ),
            ),
        )
      ],
    ),
  );
}