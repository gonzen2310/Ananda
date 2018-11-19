import 'package:flutter/material.dart';

import 'package:ananda_app/TimerPage/TimerPageState.dart';

class TimerPage extends StatefulWidget {
  int timeTimerPage;
  var workoutMap = [];

  TimerPage({Key key, @required this.timeTimerPage, @required this.workoutMap})
      : super(key: key);

  @override
  TimerPageState createState() =>
      new TimerPageState(
          totalTime: timeTimerPage,
          timeLeft: timeTimerPage,
          workoutMap: workoutMap,
          uneditedMap: new List.from(workoutMap));
}