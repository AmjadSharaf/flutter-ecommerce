import 'package:ecomme/features/cart/presentation/widgets/cart_item.dart';
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
        if (state.warningProduct != null) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('تنبيه'),
              content: const Text('بعد 3 قطع، سيتم احتساب السعر بدون خصم.'),
              actions: [
                TextButton(
                  onPressed: () {
                    context.read<CartCubit>().clearWarning();
                    Navigator.pop(context);
                  },
                  child: const Text('موافق'),
                ),
              ],
            ),
          );
        }
      },
      builder: (context, state) {
        final items = state.items;

        return Scaffold(
          appBar: AppBar(title: const Text('سلة المشتريات')),
          body: items.isEmpty
              ? const Center(child: Text('السلة فارغة'))
              : ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return CartItemTile(item: item);
                  },
                ),
          bottomNavigationBar: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey.shade100,
            child: Text(
              'الإجمالي: ${state.total.toStringAsFixed(0)} ل.س',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    );
  }
}