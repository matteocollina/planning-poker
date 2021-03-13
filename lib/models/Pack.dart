import 'package:my_planning_poker/models/Point.dart';

class Pack {
    String name;
    List <Point> points;

    Pack(name, points){
      this.name = name;
      this.points = points;
    }
}