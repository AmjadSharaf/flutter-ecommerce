
import 'package:ecomme/features/prodacts/presentation/widget/color_dot.dart';
import 'package:flutter/material.dart';

class prodact_image extends StatelessWidget {
  final String image;
  const prodact_image({super.key, required this.size, required this.image});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultFontSize),
      // height: size.width * 0.8,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // alignment: Alignment.bottomCenter,
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              image,
              height: size.width * 0.75,
              width: size.width * 0.75,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultFontSize),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                colorDot(fillColor: Colors.grey, isSelect: true),
                colorDot(fillColor: Colors.red, isSelect: false),
                colorDot(fillColor: Colors.blue, isSelect: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
