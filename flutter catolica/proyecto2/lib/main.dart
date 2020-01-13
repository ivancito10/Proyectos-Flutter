import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('chat'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {},),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {},),
          ],
        ),
      ),
    );
  }
}

