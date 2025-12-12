import 'package:flutter/material.dart';

class MyTextstyle extends StatelessWidget {
  final double fontSize ;
  final String text;
  final FontWeight weight;
  final Color color;
  MyTextstyle({
    super.key,
     this.fontSize=16,
     this.weight = FontWeight.normal,
    required this.color, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize , color:  color , fontWeight: weight));
  }
}
