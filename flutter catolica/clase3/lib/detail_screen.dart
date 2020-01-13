import 'package:flutter/material.dart';

class DetailSreen extends StatefulWidget {
  DetailSreen({Key key, this.nombre}) : super(key: key);

  String nombre;

  @override
  _DetailSreenState createState() => _DetailSreenState();
}

class _DetailSreenState extends State<DetailSreen> {
  int _currentIndex = 0;
  List<Widget> _widgetsIcons = <Widget>[
    Text("pantalla unicial"),
    Text("pantalla secundaria"),
    Text("pantalla final")
  ];

  void _onItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nombre),
      ),

      body: Builder(builder: (context) =>
      Column(children: <Widget>[
        RaisedButton(
            child: Text("tocame"),
            onPressed: () {
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("holaa")));
            }),
        Center(
          child: _widgetsIcons.elementAt(_currentIndex),
        )
      ])),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("inicial")),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit), title: Text("secundario")),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("final"))
        ],
        currentIndex: _currentIndex,
        onTap: _onItem,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
