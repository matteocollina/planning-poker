import 'package:flutter/material.dart';
import 'package:my_planning_poker/models/Pack.dart';

class CardPackCell extends StatelessWidget {
  final Pack pack;
  final Function onTap;
  CardPackCell({this.pack, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("selected: ${pack.name}");
        onTap();
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text("${pack.name}", style: TextStyle(
                fontSize: 25
              ),),
              SizedBox(height: 10),
              Text("(${pack.points.join(', ')})"),
            ],
          ),
        ),
      ),
    );
  }
}
