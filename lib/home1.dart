import 'package:flutter/material.dart';
import 'main.dart';
class home1 extends StatefulWidget {
  home1({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Myhome1 createState() => _Myhome1();
}

class _Myhome1 extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Home 2"),
        leading:IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () =>     Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp())),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text("Home 2"),
          ],
        ),
      ),
    );
  }
}
