import 'package:bloc/bloc.dart';
import 'package:ecomme/core/domain/model/prodact_model.dart';

import '../model/cart_item.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartUpdate(items: []));

  List<CartItem> get _items => (state is CartUpdate) ? (state as CartUpdate).items : [];

  void addToCart(ProdactModel product, dynamic prodacts) {
    final index = _items.indexWhere((item) => item.prodacts.id == product.id);
    if (index != -1) {
      updateQuantity(prodacts.id, _items[index].quantity + 1);
    } else {
      emit(CartUpdate(items: [..._items, CartItem(prodacts: product)]));
    }
  }

  void updateQuantity(String productId, int quantity) {
    final index = _items.indexWhere((item) => item.prodacts.id == productId);
    if (index == -1) return;

    final item = _items[index];

    if (quantity > 3 && item.prodacts.discount != null) {
      emit(CartDiscount(product: item.prodacts, newQuantity: quantity));
      return;
    }

    final updatedItem = item.copyWith(quantity: quantity);
    final updatedItems = [..._items]..[index] = updatedItem;
    emit(CartUpdate(items: updatedItems));
  }

  void forceUpdateWithoutDiscount(ProdactModel product, int quantity) {
    final index = _items.indexWhere((item) => item.prodacts.id == product.id);
    if (index == -1) return;

    final updatedProduct = product.CopyWith(discount: null);
    final updatedItem = CartItem(prodacts: updatedProduct, quantity: quantity);
    final updatedItems = [..._items]..[index] = updatedItem;
    emit(CartUpdate(items: updatedItems));
  }

  void removeFromCart(String productId) {
    emit(CartUpdate(items: _items.where((item) => item.prodacts.id != productId).toList()));
  }

  void clearCart() {
    emit(CartUpdate(items: []));
  }
}