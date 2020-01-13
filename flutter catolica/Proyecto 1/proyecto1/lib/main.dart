import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter FAB Drawer',//fluting Action puro y un drawer
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VistaPrincipal(), 
          
          )
          
        );
     
      }
      
      class VistaPrincipal extends StatelessWidget {
        
         var titulo = Text('Drawer', style: TextStyle(
    color: Colors.white,
  ),);

        @override
        Widget build (BuildContext context){
          Scaffold scaffold=Scaffold(
            appBar: AppBar(
              title: titulo,
              centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 0.0,
          actions: <Widget>[
            Icon(Icons.supervised_user_circle,
             color: Colors.white,),
            Icon(Icons.settings, 
            color: Colors.white,),
          ],
            ),
            
            drawer: Drawer(
              child: ListView(

                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: titulo,
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                  ),
                  ListTile(
                    title: Text("Menu 1"),
                    leading: Icon(Icons.home),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("Menu 2"),
                    leading: Icon(Icons.alarm),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("Menu 3"),
                    leading: Icon(Icons.usb),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text("Menu 4"),
                    leading: Icon(Icons.video_library),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                  new Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    title: Text("Menu 5"),
                    leading: Icon(Icons.web),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            body: ListView(
          children: <Widget>[
           
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 250.00,
              height: 120.0,
            
              margin: EdgeInsets.only(top: 0.5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
                color: Colors.red,
                borderRadius: BorderRadius.only(
               // topLeft: Radius.circular(15),
               // topRight: Radius.circular(15),
                
                )
              ),
            ),
            /*Container(
              width: 50.00,
              height: 50.0,
              color: Colors.red,
            ),*/
            Container(
              width: 110.0,
              height: 120.0,
              color: Colors.blue,
            )
          ],
        ),

        
           
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 250.00,
              height: 120.0,
            
              margin: EdgeInsets.only(top: 0.5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
                color: Colors.red,
                borderRadius: BorderRadius.only(
               // topLeft: Radius.circular(15),
               // topRight: Radius.circular(15),
                
                )
              ),
            ),
            /*Container(
              width: 50.00,
              height: 50.0,
              color: Colors.red,
            ),*/
            Container(
              width: 110.0,
              height: 120.0,
              color: Colors.blue,
            )
          ],
        )
          ],
            ),
            floatingActionButton: FloatingActionButton ( 
              onPressed: () {}, 
              child: Icon (Icons.message,), 
              backgroundColor: Colors.black, 
            ),
            
          );
          return scaffold;
        }
}

