import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Ananda Timer',
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
  int _totalTime = 0;

  final List<Map>_savedWorkouts = new List<Map>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  // Counters
  var _countersMap = {
    'prepare': 0,
    'workout': 0,
    'resting': 0,
    'cycles': 0,
    'sets': 0,
    'restSets': 0,
    'cooldown': 0,
  };



  void _incrementCounter(String keyMap) {
    setState(() {
      _countersMap[keyMap]++;

      _totalTime = _countersMap[keyMap];
    });
  }

  void _decrementCounter(String keyMap) {
    setState(() {
      _countersMap[keyMap]--;
    });
    if (_countersMap[keyMap] < 0) {
      setState(() {
        _countersMap[keyMap] = 0;
      });
    }
  }

  // Create single tile
  Widget rowTile(String section, String title) {
    return (
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(title,
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(113, 113, 113, 1.0),
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
                          onPressed: () => _decrementCounter(section),
                          child: Icon(Icons.remove)
                      ),
                      Text(
                        _countersMap[section].toString(),
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
                          onPressed: () => _incrementCounter(section),
                          child: Icon(Icons.add)
                      )
                    ]
                ),
              ),
            ]
        )
    );
  }

  // Go to new screen
  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute<void>(
        builder: (BuildContext context) {

          final Iterable<Row> tiles = _savedWorkouts.map(
                (Map pair) {
              return new Row(
                children: <Widget>[
              GradientCard(
                  gradient: Gradients.hotLinear,
                  child: Row(
                      children: <Widget>[
                        Text(
                            pair['prepare'].toString(),
                            style: TextStyle(fontSize: 20.0),
                        )
                      ],
                    )
                  ),
                ],
              );
            },
          );
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return new Scaffold(         // Add 6 lines from here...
            appBar: new AppBar(
              title: const Text('Saved Workouts',
                style: TextStyle(color: Colors.white),
              ),
              iconTheme: IconThemeData(color: Colors.white),
            ),
            body: new ListView(children: divided),
          );                           // ... to here.
        },
      ),
    );
  }

  _showSnackbar() {
    final snackBar = SnackBar(
      content: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text("Workout Saved",
          style: TextStyle(color: Color.fromRGBO(254, 175, 131, 1.0),
          ),
        ),
      ),
      duration: Duration(seconds: 3),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title, style: TextStyle(
            color: Colors.white
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list, color: Colors.white,),
            onPressed: _pushSaved,
          )
        ],
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
                      Row(
                        children: <Widget>[
                          Text("Time: ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(255, 128, 58, 1.0),
                              fontWeight: FontWeight.w500
                            ),
                          ),

                          Text(_totalTime.toString() + " secs",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(138, 138, 138, 1.0),
                                fontWeight: FontWeight.w500
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text("Intervals: ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromRGBO(255, 128, 58, 1.0),
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Text("2",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(138, 138, 138, 1.0),
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 16.0),
                        child: CircularGradientButton(
                          child: Icon(Icons.favorite),
                          callback: (){
                            _savedWorkouts.add(_countersMap);
                            _showSnackbar();
                          },
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
                      /*********************************
                       *  PREPARE TILE
                       **********************************/
                      rowTile('prepare', 'Prepare'),
                      Divider(),

                      /*********************************
                       *  WORKOUT TILE
                       **********************************/
                      rowTile('workout', 'Workout'),
                      Divider(),

                      /*********************************
                       *  RESTING TILE
                       **********************************/
                      rowTile('resting', 'Resting'),
                      Divider(),

                      /*********************************
                       *  CYCLES TILE
                       **********************************/
                      rowTile('cycles', 'Cycles'),
                      Divider(),

                      /*********************************
                       *  SETS TILE
                       **********************************/
                      rowTile('sets', 'sets'),
                      Divider(),

                      /*********************************
                       *  REST / SETS TILE
                       **********************************/
                      rowTile('restSets', 'Rest / Set'),
                      Divider(),

                      /*********************************
                       *  COOL DOWN TILE
                       **********************************/
                      rowTile('cooldown', 'Cooldown'),
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