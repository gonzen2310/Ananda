import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(254, 175, 131, 1.0),
        primaryColorDark: Color.fromRGBO(246, 126,59, 0.8),
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

  void _substractCounter() {
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
            ListTile(
              title: Text("Time"),
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
                                      onPressed: _substractCounter,
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
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}