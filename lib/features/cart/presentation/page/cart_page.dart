import 'package:ecomme/features/cart/presentation/widgets/cart_discount.dart';
import 'package:ecomme/features/cart/presentation/widgets/cart_item.dart';
import 'package:ecomme/features/cart/presentation/widgets/cart_total.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cart_cubit.dart';
import '../../cubit/cart_state.dart';




class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        if (state is CartDiscount) {
          showDialog(
            context: context,
            builder: (_) => CartDiscountDialog(
              product: state.product,
              quantity: state.newQuantity,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is CartUpdate) {
          final items = state.items;

          return Scaffold(
            appBar: AppBar(title: const Text('سلة المشتريات')),
            body: items.isEmpty
                ? const Center(child: Text('السلة فارغة'))
                : ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) => CartItemTile(item: items[index]),
                  ),
            bottomNavigationBar: CartTotalBar(total: state.total),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}