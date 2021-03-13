import 'package:flutter/material.dart';
import 'package:my_planning_poker/models/Point.dart';

class CardPointCell extends StatelessWidget {
  final Point point;
  final Function onTap;
  final bool isSelected;
  CardPointCell({this.point, this.onTap, this.isSelected});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("selected: ${point.points}");
        onTap();
      },
      child: Card(
        semanticContainer: true,
        elevation: 5,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${point.points}", style: TextStyle(
                fontSize: 25
              ))
            ],
          ),
        ),
      ),
    );
  }
}
