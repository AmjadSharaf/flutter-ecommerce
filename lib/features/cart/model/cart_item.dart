import 'package:ecomme/core/domain/model/prodact_model.dart';

class CartItem {
  final ProdactModel prodacts;
  final quantity;
  CartItem({required this.prodacts, this.quantity = 1});

  double get totalPrice {
    final discount = quantity > 3 ? 3 : quantity;
    final normalQty = quantity > 3 ? quantity - 3 : 0;
    return (discount * prodacts.discount) + (normalQty * prodacts.price);
  }

  CartItem copyWith({int? quantity, ProdactModel? product}) {
    return CartItem(
      prodacts: product ?? this.prodacts,
      quantity: quantity ?? this.quantity,
    );
  }
}
