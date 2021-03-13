import 'package:flutter/material.dart';
import 'package:my_planning_poker/components/CardPointCell.dart';
import 'package:my_planning_poker/models/Pack.dart';
import 'package:my_planning_poker/components/AppBar.dart';

class SelectPoint extends StatefulWidget {
  @override
  _SelectPointState createState() => _SelectPointState();
}

class _SelectPointState extends State<SelectPoint> {
  Map data = {};  
  Pack pack;
  int indexSelected = -1;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    pack = data['pack'];

    return Scaffold(
      appBar: CustomAppBar(title:"Scegli la carta"),
      body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(pack.points.length, (index) {
            return CardPointCell(point:pack.points[index],onTap:(){
              this.setState(() {
                indexSelected = index;
              });
              Navigator.pushNamed(context, '/showPoint', arguments: {'selected': pack.points[index]});
            },isSelected: indexSelected == index);
          }),
        ),
    );
  }
}