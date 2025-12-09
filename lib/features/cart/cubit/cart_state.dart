
import 'package:ecomme/core/domain/model/prodact_model.dart';
import 'package:ecomme/features/cart/model/cart_item.dart';

abstract class CartState {}

class CartInitial extends CartState {}

class CartUpdate extends CartState {
  final List<CartItem> items;
  CartUpdate({required this.items});

  double get total => items.fold(0, (sum, item) => sum + item.totalPrice);
}

class CartDiscount extends CartState {
  final ProdactModel product;
  final int newQuantity;
  CartDiscount({required this.newQuantity, required this.product});
}