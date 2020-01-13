import 'package:clase3/detail_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String _nombre;
  String _pass;
  String _mensaje="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Container(
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "",),
                     onChanged:(texto){
                       _nombre=texto;
                       print(_nombre);
                     } 
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: ""),
                     onChanged:(texto){
                       _pass=texto;
                       print(_pass);
                     },
                ),
                RaisedButton(
                  child: Text("Ingresar"),
                  color: Colors.blue,
                 onPressed: () {
                   setState(() {
                     if(_nombre == "gunar" && _pass == "123"){
                       Navigator.push(context, 
                       MaterialPageRoute(
                         builder: (context) => DetailSreen(nombre: _nombre,) 
                       )
                       );
                     }
                     else{
                       if(_nombre != "gunar"){
                         _mensaje = " el usuario no correcto";

                       }
                       if(_pass != "123"){
                         _mensaje = "el passwor no correcto";
                     }
                   }
                   
                 });
                 }
                 ),
                Text(_mensaje == null ? "aun no hay mensaje" : _mensaje)

              ],
            ),
          ),),
      ),
    );
  }
}