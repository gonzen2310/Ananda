import 'package:flutter/material.dart';
import './MakeList.dart';

class MakeListState extends State<MakeList> {
  var _rowHeight = 75.0;
  var _textStyle = TextStyle(fontSize: 20.0, color: Color(0xFF000000));
  var _textStyle2 = TextStyle(fontSize: 22.0, color: Colors.black);
  var workoutMap;
  var currentKeyMakeList;
  var currentWorkout;
  static var currentWorkout2;
  var colorFinal;

  ScrollController controller = new ScrollController();

  MakeListState(
      {Key key, @required this.workoutMap, @required this.currentWorkout}) {
    print(currentWorkout);
    currentWorkout2 = currentWorkout;
  }

  @override
  void initState() {
    controller = new ScrollController()..addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    print(controller.position.extentAfter);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      itemBuilder: (context, i) {
        if (i >= workoutMap.length * 2 - 1) {
          return null;
        }
        if (i.isOdd) {
          return Divider();
        }
        return _singleRow(workoutMap[(i / 2).round()].keys.first,
            (i / 2).round(), workoutMap[(i / 2).round()].values.first);
      },
    );
  }

  Widget _singleRow(String activity, int index, durationOfActivity) {
    if (activity == currentWorkout2)
      colorFinal = Color.fromRGBO(254, 175, 131, 1.0);
    else
      colorFinal = Colors.transparent;

    return Container(
      height: _rowHeight,
      color: colorFinal,
      child: Padding(
        padding: EdgeInsets.fromLTRB(25.0, 23.0, 32.0, 16.0),
        child: Row(
          children: <Widget>[
            _indexNumbers(index),
            _rowTileContents(activity, durationOfActivity)
          ],
        ),
      ),
    );
  }

  Widget _indexNumbers(index) {
    return Text(
      ((index + 1).toString() + "."),
      style: _textStyle2,
    );
  }

  Widget _rowTileContents(activity, durationOfActivity) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              activity.toString().replaceAll(new RegExp(r"[0-9]"), ""),
              style: _textStyle,
            ),
            Text(
              durationOfActivity.toString(),
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ),
      ),
    );
  }
}
