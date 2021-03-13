import 'package:flutter/material.dart';
import 'package:my_planning_poker/screens/ChooseCardPack.dart';
import 'package:my_planning_poker/screens/SelectPoint.dart';
import 'package:my_planning_poker/screens/ShowPoint.dart';
import 'package:my_planning_poker/theme/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Golee Planning Poker',
      theme: theme(),
      initialRoute: '/',
        routes: <String, WidgetBuilder>{
          "/": (BuildContext context) => ChooseCardPack(),
          "/selectPoint": (BuildContext context) => SelectPoint(),
          "/showPoint": (BuildContext context) => ShowPoint()
        },
    );
  }
}
