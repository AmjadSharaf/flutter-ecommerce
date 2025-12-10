

import 'package:ecomme/core/domain/model/prodact_model.dart';

class CartItem {
  final ProdactModel product;
  final int quantity;

  CartItem({required this.product, required this.quantity});

  double get totalPrice {
    final discounted = product.discount ?? product.price;
    final fullPrice = product.price;

    if (quantity <= 3) {
      return quantity * discounted;
    } else {
      final discountedTotal = 3 * discounted;
      final fullPriceTotal = (quantity - 3) * fullPrice;
      return discountedTotal + fullPriceTotal;
    }
  }
}