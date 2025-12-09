

import 'package:bloc/bloc.dart';
import 'package:ecomme/core/domain/model/prodact_model.dart';

import 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesState([]));

  void toggleFavorite(ProdactModel product) {
    final exists = state.favorites.any((p) => p.id == product.id);
    if (exists) {
      emit(FavoritesState(state.favorites.where((p) => p.id != product.id).toList()));
    } else {
      emit(FavoritesState([...state.favorites, product]));
    }
  }

  bool isFavorite(String productId) {
    return state.favorites.any((p) => p.id == productId);
  }
}