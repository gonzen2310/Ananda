import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import './Intervals.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Ananda Timer',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
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
  final myController = TextEditingController();

  String workoutTitle;

  final List<Map>_savedWorkouts = new List<Map>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  // default value Counters
  static var _countersMap = {
    'prepare': 10,
    'workout': 20,
    'resting': 5,
    'cycles': 4,
    'sets': 1,
    'restSets': 0,
    'cooldown': 0,
  };


  static int _getTotalTime() {
    return _countersMap['sets'] * (_countersMap['prepare'] + (_countersMap['workout'] * _countersMap['cycles']) + (_countersMap['resting'] * (_countersMap['cycles'] - 1)));
  }

  int _totalTime = _getTotalTime();


  void _incrementCounter(String keyMap) {
    setState(() {
      _countersMap[keyMap]++;

      _totalTime =  _getTotalTime();
    });
  }

  void _resetValues() {
    setState(() {
      _countersMap = {
        'prepare': 10,
        'workout': 20,
        'resting': 5,
        'cycles': 4,
        'sets': 1,
        'restSets': 0,
        'cooldown': 0,
      };
      _totalTime = _getTotalTime();
    });
  }

  void _decrementCounter(String keyMap) {
    setState(() {
      _countersMap[keyMap]--;
      _totalTime = _getTotalTime();
    });
    if (_countersMap[keyMap] < 0) {
      setState(() {
        _countersMap[keyMap] = 0;
        _totalTime = _getTotalTime();
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
          final Iterable<Container> tiles = _savedWorkouts.map(
                (Map pair) {
              return Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          pair['title']
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 16.0),
                            child: CircularGradientButton(
                              child: Icon(Icons.delete),
                              callback: (){},
                              gradient: Gradients.hotLinear,
                            ),
                          ),
                          CircularGradientButton(
                            child: Icon(Icons.play_arrow),
                            callback: (){},
                            gradient: Gradients.rainbowBlue,
                          )
                        ],
                      ),

                    ],
                  ),
                ),
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
      duration: Duration(seconds: 1),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myController.dispose();
    super.dispose();
  }

  // user defined function
  void _showDialog() {

    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Save workout as"),
          content: TextField(
            controller: myController,
            decoration: InputDecoration(
                  hintText: 'e.g. Workout 1',
                  icon: Icon(Icons.directions_run)
            ),
            maxLength: 24,
            maxLines: 1,
          ),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Save"),
              onPressed: () {
                workoutTitle = myController.text.toString();
                Navigator.of(context).pop();
                var copyStats = {
                  'title': workoutTitle,
                  'prepare': _countersMap['prepare'],
                  'workout': _countersMap['workout'],
                  'resting': _countersMap['resting'],
                  'cycles': _countersMap['cycles'],
                  'sets': _countersMap['sets'],
                  'restSets': _countersMap['restSets'],
                  'cooldown': _countersMap['cooldown'],
                };
                _savedWorkouts.add(copyStats);
                myController.clear();
                _showSnackbar();
              },
            ),
          ],
        );
      },
    );
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
          ),
          IconButton(
            icon: Icon(Icons.refresh, color: Colors.white,),
            onPressed: _resetValues,
          )
        ],
      ),
      body: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),

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
                            _showDialog();
                            },
                          gradient: Gradients.hotLinear,
                        ),
                      ),
                      Container(
                        child: CircularGradientButton(
                          child: Icon(Icons.arrow_forward),
                          callback: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => IntervalsApp(timeMain: _totalTime,  countersMap: _countersMap,)),
                            );
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