import 'package:flutter/material.dart';

import 'package:ananda_app/TimerPage/TimerPage.dart';

class IntervalsApp extends StatelessWidget {
  var timeMain = 110;
  var countersMap = {};

  IntervalsApp({Key key, @required this.timeMain, @required this.countersMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mapToDisplay = makeMap();
    return MaterialApp(
      theme: myTheme(),
      title: "Ananda Timer",
      home: Scaffold(
        appBar: myAppBar(),
        body: TimerPage(
          timeTimerPage: timeMain,
          workoutMap: _mapToDisplay,
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      title: Text(
        "Ananda Timer",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  ThemeData myTheme() {
    return ThemeData(
      primarySwatch: Colors.deepOrange,
      primaryColor: Color.fromRGBO(254, 175, 131, 1.0),
      primaryColorDark: Colors.deepOrange,
    );
  }

  List<dynamic> makeMap() {
    int setCount = countersMap['sets'];
    int cycleCount = countersMap['cycles'];
    int totalIntervals = (setCount * cycleCount) + (setCount * cycleCount) + 1;
    var _mapToDisplay = [];

    for (int i = 1; i <= totalIntervals; i++) {
      if (i == 1) {
        _mapToDisplay.add({"Prepare" + i.toString(): countersMap["prepare"]});
      } else if (i == totalIntervals) {
        _mapToDisplay.add({"Cooldown" + i.toString(): countersMap["cooldown"]});
      } else if (i % 2 == 0) {
        _mapToDisplay.add({"Workout" + i.toString(): countersMap["workout"]});
      } else if (i % 2 == 1) {
        _mapToDisplay.add({"Rest" + i.toString(): countersMap["resting"]});
      }
    }
    return _mapToDisplay;
  }
}
