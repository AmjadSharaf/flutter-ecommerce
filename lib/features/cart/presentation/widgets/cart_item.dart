import 'package:ecomme/features/cart/cubit/cart_cubit.dart';
import 'package:ecomme/features/cart/model/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemTile extends StatelessWidget {
  final CartItem item;
  const CartItemTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: Image.network(item.product.imagesUrl, width: 60),
        title: Text(item.product.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('الكمية: ${item.quantity}'),
            Text('السعر: ${item.totalPrice.toStringAsFixed(0)} ل.س'),
          ],
        ),
        trailing: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    if (item.quantity > 1) {
                      context.read<CartCubit>().updateQuantity(
                            item.product.id,
                            item.quantity - 1,
                          );
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    context.read<CartCubit>().updateQuantity(
                          item.product.id,
                          item.quantity + 1,
                        );
                  },
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                context.read<CartCubit>().removeFromCart(item.product.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}