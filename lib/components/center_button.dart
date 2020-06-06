import 'package:flutter/material.dart';

class CenterButton extends StatelessWidget {
  List<Color> _colors = [Colors.cyan, Colors.pink];
  List<double> _stops = [0.0, 0.7];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 25,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          gradient: LinearGradient(
          colors: _colors,
          stops: _stops,
      )
    ),
    child: Padding(
      padding: const EdgeInsets.only(left:4.0, right: 4),
      child: Container(
        height: 25,
        width: 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Center(
          child: Icon(Icons.add, size: 18,color: Colors.black,),
        ),
      ),
    ),
    );
  }
}
