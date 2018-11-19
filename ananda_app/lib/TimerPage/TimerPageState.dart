import 'package:gradient_widgets/gradient_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ananda_app/TimerPage/TimerPage.dart';
import '../MakeList/MakeList.dart';

class TimerPageState extends State<TimerPage> {
  var currentIcon = 0;
  var _textStyleTimeLeftTextView =
      TextStyle(fontSize: 18.0, color: Color(0xFFFF803A));
  var _textStyleTimeLeftValue =
      TextStyle(fontSize: 18.0, color: Color(0xFF000000));
  var _countDownTextValue =
      TextStyle(fontSize: 150.0, color: Colors.red);
  int prepareTime = 0;
  var totalTime;
  var timeLeft;
  var workoutMap = [];
  var uneditedMap = [];
  StreamSubscription periodicSub;
  StreamSubscription periodicSub2;
  var currentPointer = 0;
  var timeToDisplay;
  var currentActivity;

  TimerPageState(
      {Key key,
      @required this.totalTime,
      @required this.timeLeft,
      @required this.workoutMap,
      @required this.uneditedMap}) {
    timeToDisplay = workoutMap[0].values.first.toString();
    currentActivity = workoutMap[0].keys.first.toString();
    prepareTime = int.parse(workoutMap[0].values.first.toString());
  }

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
        children: <Widget>[_row1Column1(), _row1Column2()],
      ),
    );
  }

  Widget _row1Column1() {
    return Row(
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
    );
  }

  Widget _row1Column2() {
    return Row(
      children: <Widget>[_button1(), _button2()],
    );
  }

  Widget _button1() {
    return CircularGradientButton(
      gradient: Gradients.hotLinear,
      child: Icon(Icons.refresh, size: 25.0),
      callback: () {
        _button1Click();
      },
    );
  }

  Widget _button2() {
    return Container(
      margin: EdgeInsets.only(left: 16.0),
      child: CircularGradientButton(
        gradient: Gradients.hotLinear,
        child: Icon(
          currentIcon == 0 ? Icons.play_arrow : Icons.pause,
          size: 25.0,
        ),
        callback: () {
          _button2Click();
        },
      ),
    );
  }

  void _button1Click() {
    this.setState(() {
      _countDownTextValue = TextStyle(fontSize: 150.0, color: Colors.red);
      prepareTime = int.parse(uneditedMap[0].values.first.toString());
      timeLeft = totalTime;
      currentActivity = uneditedMap[0].keys.first.toString();
      timeToDisplay = uneditedMap[0].values.first.toString();
      for (int i = 0; i < uneditedMap.length; i++) {
        workoutMap[i] = uneditedMap[i];
      }
    });
  }

  void _button2Click() {
    this.setState(
      () {

        if (currentIcon == 0) {
          currentIcon = 1;
          periodicSub2 = new Stream.periodic(const Duration(seconds: 1), (v) => v)
          .take(totalTime).listen((count) => this.setState(
              () {
                if(prepareTime == 0)
                  _countDownTextValue =  TextStyle(fontSize: 150.0, color: Color(0xFF717171));
                prepareTime--;
              }
          ));


          periodicSub =
              new Stream.periodic(const Duration(seconds: 1), (v) => v)
                  .take(totalTime)
                  .listen(
                    (count) => this.setState(
                          () {
                            timeLeft--;
                            for (int i = 0; i < workoutMap.length; i++) {
                              timeToDisplay =
                                  (workoutMap[i].values.first - 1).toString();
                              if (workoutMap[i].values.first > 0) {
//                          print(workoutMap[i].keys.first.toString());  /// / // / / / / / // /
                                currentActivity =
                                    workoutMap[i].keys.first.toString();
                                workoutMap[i] = {
                                  workoutMap[i].keys.first:
                                      workoutMap[i].values.first - 1
                                };
                                return;
                              }
                            }
                          },
                        ),
                  );
        } else {
          currentIcon = 0;
          periodicSub.cancel();
          periodicSub2.cancel();
        }

      },
    );
  }

  Widget _row2() {
    return Center(
        child: Text(
      timeToDisplay.toString(),
      style: _countDownTextValue,
    ));
  }

  Widget _row3() {
    return Expanded(
      child: MakeList(workoutMap: workoutMap, currentWorkout: currentActivity),
    );
  }
}
