import 'package:ecomme/core/domain/model/prodact_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/cart_item.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.initial());

  
  void addToCart(ProdactModel product) {
    final existingIndex = state.items.indexWhere(
      (item) => item.product.id == product.id,
    );
    final updatedItems = List<CartItem>.from(state.items);

    if (existingIndex != -1) {
      final existing = updatedItems[existingIndex];
      final newQuantity = existing.quantity + 1;

      updatedItems[existingIndex] = CartItem(
        product: existing.product,
        quantity: newQuantity,
      );

      if (newQuantity > 3) {
        _emitWarningState(updatedItems, product, newQuantity);
        return;
      }
    } else {
      updatedItems.add(CartItem(product: product, quantity: 1));
    }

    _emitUpdatedState(updatedItems);
  }

  
  void updateQuantity(String productId, int newQuantity) {
    final updatedItems = state.items.map((item) {
      if (item.product.id == productId) {
        return CartItem(product: item.product, quantity: newQuantity);
      }
      return item;
    }).toList();

    final product = updatedItems
        .firstWhere((item) => item.product.id == productId)
        .product;

    if (newQuantity > 3) {
      _emitWarningState(updatedItems, product, newQuantity);
      return;
    }

    _emitUpdatedState(updatedItems);
  }

 
  void removeFromCart(String productId) {
    final updatedItems = state.items
        .where((item) => item.product.id != productId)
        .toList();
    _emitUpdatedState(updatedItems);
  }

  
  void clearWarning() {
    emit(state.clearWarning());
  }

  
  void _emitUpdatedState(List<CartItem> items) {
    final total = items.fold(0.0, (sum, item) => sum + item.totalPrice);
    emit(CartState(items: items, total: total));
  }

 
  void _emitWarningState(
    List<CartItem> items,
    ProdactModel product,
    int quantity,
  ) {
    final total = items.fold(0.0, (sum, item) => sum + item.totalPrice);
    emit(
      CartState(
        items: items,
        total: total,
        warningProduct: product,
        newQuantity: quantity,
      ),
    );
  }
}
