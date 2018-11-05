import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(254, 175, 131, 1.0),
        primaryColorDark: Colors.deepOrange,
      ),
      home: new MyHomePage(title: 'Ananda Timer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dicrementCounter() {
    setState(() {
      _counter--;
    });
    if (_counter < 0) {
      setState(() {
        _counter = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Time",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(255, 128, 58, 1.0),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Text("Intervals",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromRGBO(255, 128, 58, 1.0),
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 16.0),
                        child: CircularGradientButton(
                          child: Icon(Icons.favorite),
                          callback: (){},
                          gradient: Gradients.hotLinear,
                        ),
                      ),
                      Container(
                        child: CircularGradientButton(
                          child: Icon(Icons.arrow_forward),
                          callback: (){
                          },
                          gradient: Gradients.hotLinear,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Expanded(
                child: new Container(
                  child: new ListView(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text("Prepare",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(113, 113, 113, 1.0)
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  RaisedButton(
                                      padding: const EdgeInsets.all(8.0),
                                      textColor: Colors.deepOrange,
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      onPressed: _dicrementCounter,
                                      child: Icon(Icons.remove)
                                  ),
                                  Text(
                                    _counter.toString(),
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500
                                    ),

                                  ),
                                  RaisedButton(
                                      padding: const EdgeInsets.all(8.0),
                                      textColor: Colors.deepOrange,
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      onPressed: _incrementCounter,
                                      child: Icon(Icons.add)
                                  )
                                ]
                            ),
                          ),
                        ]
                      ),
                      Divider(),
                    ],
                  ),
                )
            )
          ]
      ),
    );
  }
}