import 'package:flutter/material.dart';
import 'package:my_planning_poker/models/Point.dart';
import 'package:flip_card/flip_card.dart';
import 'package:my_planning_poker/components/AppBar.dart';

class ShowPoint extends StatefulWidget {
  @override
  _ShowPointState createState() => _ShowPointState();
}

class _ShowPointState extends State<ShowPoint> {
  Map data = {};
  Point selectedPoints;
  bool isHideCard = true;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    selectedPoints = data['selected'];
    GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

    return Scaffold(
      appBar: CustomAppBar(title:"Mostra risultato"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlipCard(
            key: cardKey,
            flipOnTouch: true,
            front: Container(
              child: Container(
                child: Image.asset('lib/assets/images/card.png'),
              ),
            ),
            back: Container(
                child: Stack(
              children: [
                Image.asset('lib/assets/images/card-empty.png'),
                Positioned(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    top: 0,
                    left: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$selectedPoints",
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width *
                                    45 /
                                    100,
                                color: Colors.red),
                          ),
                        ])),
              ],
            )),
          )
        ],
      ),
    );
  }
}
