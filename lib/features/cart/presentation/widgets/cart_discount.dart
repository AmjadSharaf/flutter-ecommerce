// import 'package:ecomme/core/domain/model/prodact_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../cubit/cart_cubit.dart';


// class CartDiscountDialog extends StatelessWidget {
//   final ProdactModel product;
//   final int quantity;

//   const CartDiscountDialog({super.key, required this.product, required this.quantity});

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: const Text('تنبيه'),
//       content: const Text('أي كمية بعد أول 3 قطع سيتم احتسابها بالسعر العادي. هل تريد المتابعة؟'),
//       actions: [
//         TextButton(
//           onPressed: () => Navigator.pop(context),
//           child: const Text('إلغاء'),
//         ),
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//             context.read<CartCubit>().forceUpdateWithoutDiscount(product, quantity);
//           },
//           child: const Text('متابعة'),
//         ),
//       ],
//     );
//   }
// }