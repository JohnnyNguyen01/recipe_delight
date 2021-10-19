import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/application/view_models/home/models/home_view_state.dart';
import 'package:recipe_app/domain/interactors/meal/i_meal_interactor.dart';
import 'package:recipe_app/domain/interactors/meal/meal_interactor.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeViewState>((ref) {
  final mealInteractor = ref.watch(mealInteractorProvider);
  return HomeViewModel(mealInteractor: mealInteractor);
});

class HomeViewModel extends StateNotifier<HomeViewState> {
  HomeViewModel({required IMealInteractor mealInteractor})
      : _mealInteractor = mealInteractor,
        super(const HomeViewState()) {
    _initialise();
  }

  final IMealInteractor _mealInteractor;

  Future<void> _initialise() async {
    state = state.copyWith(isLoading: true);
    final latestRecipes = await _mealInteractor.fetchRandomMealCards(amount: 8);
    latestRecipes.fold(
      (mealCards) => state = state.copyWith(latestRecipes: mealCards),
      // TODO: Implement failure in ui [Johnny]
      (failure) => log(failure.message),
    );
    state = state.copyWith(isLoading: false);
  }
}
