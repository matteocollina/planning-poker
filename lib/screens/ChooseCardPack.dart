import 'package:flutter/material.dart';
import 'package:my_planning_poker/components/CardPackCell.dart';
import 'package:my_planning_poker/models/Pack.dart';
import 'package:my_planning_poker/services/CardPacks.dart';
import 'package:my_planning_poker/components/AppBar.dart';

class ChooseCardPack extends StatefulWidget {
  @override
  _ChooseCardPackState createState() => _ChooseCardPackState();
}

class _ChooseCardPackState extends State<ChooseCardPack> {
  List<Pack> cardPacks = getCardPacks(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title:"Planning Poker"),
      body: ListView.builder(
        itemCount: cardPacks.length,
        itemBuilder: (context, index){
          return CardPackCell(pack: cardPacks[index], onTap: () {
            Navigator.pushNamed(context, '/selectPoint', arguments: {
              'pack': cardPacks[index]
            });
          });
        }
      )
    );
  }
}