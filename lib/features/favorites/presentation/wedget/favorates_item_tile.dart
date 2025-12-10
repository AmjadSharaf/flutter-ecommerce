import 'package:ecomme/core/domain/model/prodact_model.dart';
import 'package:flutter/material.dart';

class FavoratesItemTile extends StatelessWidget {
  final ProdactModel product;

  const FavoratesItemTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(product.imagesUrl),
        title: Text(product.name),
        subtitle: Text("Price ${product.price} \ل.س"),
      ),
    );
  }
}
