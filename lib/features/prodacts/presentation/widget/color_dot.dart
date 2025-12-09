import 'package:ecomme/core/constant/colors.dart';
import 'package:flutter/material.dart';

class colorDot extends StatelessWidget {
  final Color fillColor;
  final bool isSelect;

  const colorDot({super.key, required this.fillColor, this.isSelect = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: KDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 17,
      width: 17,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelect ? Colors.grey : Colors.white12),
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
      ),
    );
  }
}
