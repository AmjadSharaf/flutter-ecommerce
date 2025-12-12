import 'package:ecomme/features/auth/persentation/page/login_page.dart';
import 'package:ecomme/features/cart/cubit/cart_cubit.dart';
import 'package:ecomme/features/favorites/cubit/favorites_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartCubit()),
        BlocProvider(create: (_) => FavoritesCubit()),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
      home: LoginScreen(),
      darkTheme: ThemeData(),
    );
  }
}
