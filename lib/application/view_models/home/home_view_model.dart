import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/application/view_models/home/models/home_view_state.dart';
import 'package:recipe_app/domain/interactors/meal/i_meal_interactor.dart';
import 'package:recipe_app/domain/interactors/meal/meal_interactor.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeViewState>((ref) {
  final mealInteractor = ref.watch(mealInteractorProvider);
  return HomeViewModel(mealInteractor: mealInteractor);
});

class HomeViewModel extends StateNotifier<HomeViewState> {
  HomeViewModel({required final IMealInteractor mealInteractor})
      : _mealInteractor = mealInteractor,
        super(const HomeViewState()) {
    _initialise();
  }

  final IMealInteractor _mealInteractor;

  Future<void> _initialise() async {
    state = state.copyWith(isLoading: true);
    final mealResponse = await _mealInteractor.fetchRandomMeal();
    mealResponse.fold(
      (meal) => state = state.copyWith(meal: meal),
      (r) => null,
    );
    state = state.copyWith(isLoading: false);
  }
}
