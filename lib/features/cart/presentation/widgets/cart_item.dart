import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cart_cubit.dart';
import '../../model/cart_item.dart';

class CartItemTile extends StatelessWidget {
  final CartItem item;
  const CartItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: Image.network(item.prodacts.imagesUrl, width: 60),
        title: Text(item.prodacts.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('السعر: ${item.totalPrice.toStringAsFixed(0)} ل.س'),
            Text('الكمية: ${item.quantity}'),
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
                        item.prodacts.id as String,
                        item.quantity - 1,
                      );
                    }
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    context.read<CartCubit>().updateQuantity(
                      item.prodacts.id as String,
                      item.quantity + 1,
                    );
                  },
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                context.read<CartCubit>().removeFromCart(
                  item.prodacts.id as String,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
