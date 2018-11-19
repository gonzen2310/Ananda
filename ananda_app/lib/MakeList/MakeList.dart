import 'package:flutter/material.dart';
import './MakeListState.dart';

// ignore: must_be_immutable
class MakeList extends StatefulWidget {
  final workoutMap;
  final currentWorkout;
  ScrollController control;

  static MakeListState of(BuildContext context) =>
      context.ancestorStateOfType(const TypeMatcher<MakeListState>());

  MakeList(
      {Key key, @required this.workoutMap, @required this.currentWorkout}) {
    createState();
  }

  @override
  MakeListState createState() =>
      new MakeListState(workoutMap: workoutMap, currentWorkout: currentWorkout);
}
