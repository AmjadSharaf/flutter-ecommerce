import 'package:ecomme/core/domain/model/prodact_model.dart';
import 'package:ecomme/features/cart/model/cart_item.dart';

class CartState {
  final List<CartItem> items;
  final double total;

  final ProdactModel? warningProduct;
  final int? newQuantity;

  const CartState({
    required this.items,
    required this.total,
    this.warningProduct,
    this.newQuantity,
  });

  factory CartState.initial() => const CartState(items: [], total: 0);

  CartState copyWith({
    List<CartItem>? items,
    double? total,
    ProdactModel? warningProduct,
    int? newQuantity,
  }) {
    return CartState(
      items: items ?? this.items,
      total: total ?? this.total,
      warningProduct: warningProduct,
      newQuantity: newQuantity,
    );
  }

  CartState clearWarning() {
    return CartState(
      items: items,
      total: total,
      warningProduct: null,
      newQuantity: null,
    );
  }
}
