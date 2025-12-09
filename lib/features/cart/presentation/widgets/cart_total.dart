import 'package:flutter/material.dart';

class CartTotalBar extends StatelessWidget {
  final double total;
  const CartTotalBar({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey.shade100,
      child: Text(
        'الإجمالي: ${total.toStringAsFixed(0)} ل.س',
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}