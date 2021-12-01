import 'package:flutter/material.dart';
import 'main.dart';
class home2 extends StatefulWidget {
  home2({Key? key,required  this.title}) : super(key: key);

  final String title;

  @override
  _MyHome2 createState() => _MyHome2();
}

class _MyHome2 extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Home 2"),
        leading: IconButton(
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
