import 'package:flutter/material.dart';
import 'home1.dart' as home1;
import 'home2.dart' as home2;
import 'home3.dart' as home3 ;


void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      "/home1" : (BuildContext context)=> new home1.home1(title: "Home1"),
      "/home2" : (BuildContext context )=> new home2.home2(title:"Home2"),
      "/home3" : (BuildContext context)=> new home3.home3(title:"Home3"),


      //add more routes here
    },

  ));
}
class MyApp extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<MyApp> with TickerProviderStateMixin {
  int _angle = 90;
  bool _isRotated = true;

  late AnimationController _controller;
  late Animation<double> _animation;
  late Animation<double> _animation2;
  late Animation<double> _animation3;

  @override
  void initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
    );

    _animation = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.0, 1.0, curve: Curves.linear),
    );

    _animation2 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.5, 1.0, curve: Curves.linear),
    );

    _animation3 = new CurvedAnimation(
      parent: _controller,
      curve: new Interval(0.8, 1.0, curve: Curves.linear),
    );
    _controller.reverse();
    super.initState();
  }

  void _rotate(){
    setState((){
      if(_isRotated) {
        _angle = 45;
        _isRotated = false;
        _controller.forward();
      } else {
        _angle = 90;
        _isRotated = true;
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blueGrey,

        ),
        body: new Stack(
            children: <Widget>[
              new Positioned(
                  bottom: 200.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[
                        new ScaleTransition(
                          scale: _animation3,
                          alignment: FractionalOffset.center,
                          child: new Container(
                            margin: new EdgeInsets.only(right: 16.0),
                            child: new Text(
                              'Home 1 ',
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF9E9E9E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        new ScaleTransition(
                          scale: _animation3,
                          alignment: FractionalOffset.center,
                          child: new Material(
                              color: new Color(0xFF9E9E9E),
                              type: MaterialType.circle,
                              elevation: 6.0,
                              child: new GestureDetector(
                                child: new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: new InkWell(
                                      onTap: (){
                                        if(_angle == 45.0){
                                          print("Home 1");
                                          Navigator.of(context).pushNamed("/home1");
                                        }
                                      },
                                      child: new Center(
                                        child: new Icon(
                                          Icons.add,
                                          color: new Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),

              new Positioned(
                  bottom: 144.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[
                        new ScaleTransition(
                          scale: _animation2,
                          alignment: FractionalOffset.center,
                          child: new Container(
                            margin: new EdgeInsets.only(right: 16.0),
                            child: new Text(
                              'Home 2',
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF9E9E9E),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        new ScaleTransition(
                          scale: _animation2,
                          alignment: FractionalOffset.center,
                          child: new Material(
                              color: new Color(0xFF00BFA5),
                              type: MaterialType.circle,
                              elevation: 6.0,
                              child: new GestureDetector(
                                child: new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: new InkWell(
                                      onTap: (){
                                        if(_angle == 45.0){
                                          print("Home 2");
                                          Navigator.of(context).pushNamed("/home2");
                                        }
                                      },
                                      child: new Center(
                                        child: new Icon(
                                          Icons.add,
                                          color: new Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                  bottom: 88.0,
                  right: 24.0,
                  child: new Container(
                    child: new Row(
                      children: <Widget>[
                        new ScaleTransition(

                          scale: _animation,
                          alignment: FractionalOffset.center,
                          child: new Container(
                            margin: new EdgeInsets.only(right: 16.0),
                            child: new Text(
                              'Home3',
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF9E9E9E),
                                fontWeight: FontWeight.bold,

                              ),
                            ),
                          ),
                        ),

                        new ScaleTransition(
                          scale: _animation,
                          alignment: FractionalOffset.center,
                          child: new Material(
                              color: new Color(0xFFE57373),
                              type: MaterialType.circle,
                              elevation: 6.0,
                              child: new GestureDetector(
                                child: new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    child: new InkWell(
                                      onTap: (){
                                        if(_angle == 45.0){
                                          print("Home3");
                                          Navigator.of(context).pushNamed("/home3");
                                        }
                                      },
                                      child: new Center(
                                        child: new Icon(
                                          Icons.add,
                                          color: new Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    )
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              new Positioned(
                bottom: 16.0,
                right: 16.0,
                child: new Material(
                    color: new Color(0xFFE57373),
                    type: MaterialType.circle,
                    elevation: 6.0,
                    child: new GestureDetector(
                      child: new Container(
                          width: 56.0,
                          height: 56.00,
                          child: new InkWell(
                            onTap: _rotate,
                            child: new Center(
                                child: new RotationTransition(
                                  turns: new AlwaysStoppedAnimation(_angle / 360),
                                  child: new Icon(
                                    Icons.add,
                                    color: new Color(0xFFFFFFFF),
                                  ),
                                )
                            ),
                          )
                      ),
                    )
                ),
              ),
            ]
        )
    );
  }  }
