import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'dart:async';

class IntervalsApp extends StatelessWidget {
  var timeMain = 110;
  var countersMap = {};

  IntervalsApp({Key key, @required this.timeMain, @required this.countersMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
//    countersMap.forEach(printArray);
//    print(countersMap);

    int setCount = countersMap['sets'];
    int cycleCount = countersMap['cycles'];

    int totalIntervals =
        ((setCount * cycleCount) - 1) + (setCount * cycleCount) + 2;

    var _mapToDisplay = [];

    for (int i = 1; i <= totalIntervals; i++) {
      if (i == 1) {
        _mapToDisplay.add({"prepare": countersMap["prepare"]});
      } else if (i == totalIntervals) {
        _mapToDisplay.add({"cooldown": countersMap["cooldown"]});
      } else if (i % 2 == 0) {
        _mapToDisplay.add({"workout": countersMap["workout"]});
      } else if (i % 2 == 1) {
        _mapToDisplay.add({"rest": countersMap["resting"]});
      }
    }

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor: Color.fromRGBO(254, 175, 131, 1.0),
          primaryColorDark: Colors.deepOrange,
        ),
        title: "Ananda Timer",
        home: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              new IconButton(
                icon: const Icon(Icons.list, color: Colors.white),
                onPressed: _pressedMenu,
              )
            ],
            title: Text(
              "Ananda Timer",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: TimerPage(
            timeTimerPage: timeMain,
            workoutMap: _mapToDisplay,
          ),
        ));
  }

  void _pressedMenu() {
    print("TESTED");
  }
}

class TimerPage extends StatefulWidget {
  int timeTimerPage;
  var workoutMap = [];

  TimerPage({Key key, @required this.timeTimerPage, @required this.workoutMap})
      : super(key: key);

  @override
  TimerPageState createState() => new TimerPageState(
      totalTime: timeTimerPage,
      timeLeft: timeTimerPage,
      workoutMap: workoutMap,
      uneditedMap: new List.from(workoutMap));
}

class TimerPageState extends State<TimerPage> {
  // Get the total count down value here
  var totalTime;

  // This variable is updated on each tick of the timer by -1
  var timeLeft;

  // Stores the list
  var workoutMap = [];
  var uneditedMap = [];

  TimerPageState(
      {Key key,
      @required this.totalTime,
      @required this.timeLeft,
      @required this.workoutMap,
      @required this.uneditedMap});

  StreamSubscription periodicSub;

  var currentIcon = 0;
  var _textStyleTimeLeftTextView =
      TextStyle(fontSize: 18.0, color: Color(0xFFFF803A));
  var _textStyleTimeLeftValue =
      TextStyle(fontSize: 18.0, color: Color(0xFF000000));
  var _countDownTextValue =
      TextStyle(fontSize: 150.0, color: Color(0xFF717171));

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[_row1(context), _row2(), _row3()],
      ),
    );
  }

  Widget _row1(BuildContext context2) {
    return Container(
        padding: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Text(
                    "Total time:",
                    style: _textStyleTimeLeftTextView,
                  ),
                  Text(
                    totalTime.toString(),
                    style: _textStyleTimeLeftValue,
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
              children: <Widget>[
                CircularGradientButton(
                  child: Icon(Icons.refresh, size: 25.0),
                  callback: () {
                    this.setState(() {
                      timeLeft = totalTime;
                      for(int i=0; i<uneditedMap.length; i++){
                        workoutMap[i] = uneditedMap[i];
                      }
                    });
//                    print("CHECK UNEDITED"+ uneditedMap.toString());
//                    print("CHECK: " + workoutMap.toString());
//                    return new IntervalsApp(timeMain: totalTime, countersMap: uneditedMap);
                  },
                  gradient: Gradients.hotLinear,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: CircularGradientButton(
                    child: Icon(
                      currentIcon == 0 ? Icons.play_arrow : Icons.pause,
                      size: 25.0,
                    ),
                    callback: () {
                      this.setState(() {
                        if (currentIcon == 0) {
                          currentIcon = 1;
                          periodicSub = new Stream.periodic(
                                  const Duration(seconds: 1), (v) => v)
                              .take(totalTime)
                              .listen(
                                (count) => this.setState(() {
                                      timeLeft--;
                                      for (int i = 0;
                                          i < workoutMap.length;
                                          i++) {
                                        if (workoutMap[i].values.first > 0) {
                                          workoutMap[i] = {
                                            workoutMap[i].keys.first:
                                                workoutMap[i].values.first - 1
                                          };
                                          return;
                                        }
                                      }
                                    }),
                              );
                        } else {
                          currentIcon = 0;
                          periodicSub.cancel();
                        }
                      });
                    },
                    gradient: Gradients.hotLinear,
                  ),
                ),
              ],
            )),
          ],
        ));
  }

  Widget _row2() {
    return Center(
        child: Text(
      timeLeft.toString(),
      style: _countDownTextValue,
    ));
  }

  Widget _row3() {
    return Expanded(
      child: MakeList(workoutMap: workoutMap),
    );
  }
}

class MakeList extends StatefulWidget {
  final workoutMap;

  static MakeListState of(BuildContext context) =>
      context.ancestorStateOfType(const TypeMatcher<MakeListState>());

  MakeList({Key key, @required this.workoutMap});

  @override
  MakeListState createState() => new MakeListState(workoutMap: workoutMap);
}

class MakeListState extends State<MakeList> {
  void testHere(BuildContext context) {
    print(context);
  }

  var _rowHeight = 75.0;
  var _textStyle = TextStyle(fontSize: 20.0, color: Color(0xFF000000));
  var _textStyle2 = TextStyle(fontSize: 20.0, color: Color(0xFFFEAF83));

  var workoutMap;

  static var test = [
    {"Workout": 5},
    {"Rest": 15},
    {"Cycles": 15},
    {"Rest": 15},
    {"Prepare": 5},
    {"FUCK": 25},
    {"THIS": 35},
    {"SHIT": 15},
  ];

  var activities = [
    "Workout",
    "Rest",
    "Cycles",
    "Rest",
    "Prepare",
    "FUCK",
    "THIS",
    "SHIT"
  ];

  MakeListState({Key key, @required this.workoutMap});

  @override
  Widget build(BuildContext context) {
    print("level 3:" + workoutMap.toString());

    return ListView.builder(
//      padding: EdgeInsets.all(8.0),
      itemBuilder: (context, i) {
        if (i >= workoutMap.length * 2) {
          return null;
        }
        if (i.isOdd) {
//          print(test[(i/2).round()].val.first);
          return Divider();
        }

        return _singleRow(workoutMap[(i / 2).round()].keys.first,
            (i / 2).round(), workoutMap[(i / 2).round()].values.first);
      },
    );
  }

  Widget _singleRow(String activity, int index, durationOfActivity) {
    return Material(
        child: Container(
      height: _rowHeight,
      child: InkWell(
        highlightColor: Color(0xFFFEF0E8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      ((index + 1).toString() + "."),
                      style: _textStyle2,
                    )),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 16.0),
                      child: Text(
                        activity,
                        style: _textStyle,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Text(
                    durationOfActivity.toString(),
                    style: TextStyle(fontSize: 22.0),
                  ),
                )
              ],
            ),
          ],
        ),
        onTap: () {
          setState(() {});
        },
      ),
//          color: bgColor,
    ));
  }
}
