import 'package:flutter/material.dart';

class MyDotApp extends StatelessWidget {
  const MyDotApp({super.key, required this.currentIndex});

  final int currentIndex;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(microseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(0),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        AnimatedContainer(
          duration: Duration(microseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(1),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        AnimatedContainer(
          duration: Duration(microseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(2),
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
