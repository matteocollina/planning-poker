import 'package:my_planning_poker/models/Pack.dart';
import 'package:my_planning_poker/models/Point.dart';

List<Pack> getCardPacks(){
  return [
    Pack("Taglie", [Point("XS"), Point("S"), Point("M"), Point("L"), Point("XL")]),
    Pack("Fibonacci", [Point("1"), Point("2"), Point("3"), Point("5"), Point("8"), Point("13"), Point("21"), Point("34"), Point("55"), Point("89"), Point("?")]),
    Pack("Planning Poker", [Point("0"), Point("1/2"), Point("1"), Point("2"), Point("3"), Point("5"), Point("8"), Point("13"), Point("20"), Point("40"), Point("100"), Point("∞"), Point("?")])
  ];
}