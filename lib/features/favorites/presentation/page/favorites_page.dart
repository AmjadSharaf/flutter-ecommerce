import 'package:ecomme/core/data/dumy/dumy_data.dart';
import 'package:ecomme/features/favorites/cubit/favorites_cubit.dart';
import 'package:ecomme/features/favorites/cubit/favorites_state.dart';
import 'package:ecomme/features/favorites/presentation/wedget/favorates_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
          final favorites = state.favorites;
          if (favorites.isEmpty) {
            return Center(child: const Text("لايوجد عناصر في المفضلة "));
          }
          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final prduct = favorites[index];
              return FavoratesItemTile(product: prduct);
            },
          );
        },
      ),
    );
  }
}
