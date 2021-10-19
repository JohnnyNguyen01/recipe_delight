import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/application/view_models/home/home_view_model.dart';
import 'package:recipe_app/presentation/widgets/meal_display_card.dart';
import 'package:recipe_app/presentation/widgets/ui/ui_chip.dart';
import 'package:recipe_app/utils/hooks.dart';
import 'package:recipe_app/utils/router/router.gr.dart';

const xLargeCardHeight = 560.0;
const xLargeCardWidth = 340.0;

class HomeScreen extends HookWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final viewState = useProvider(homeViewModelProvider);

    return viewState.isLoading
        ? const CentredLoadingIndicator()
        : SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Latest Recipes',
                    style: theme.textTheme.headline4,
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: viewState.latestRecipes.length,
                      physics: const ClampingScrollPhysics(),
                      itemBuilder: (_, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: MealDisplayCard(
                          cardHeight: xLargeCardHeight,
                          cardWidth: xLargeCardWidth,
                          title: viewState.latestRecipes[index].title,
                          subtitle: viewState.latestRecipes[index].subtitle,
                          category: viewState.latestRecipes[index].category,
                          imageUrl: viewState.latestRecipes[index].imageUrl,
                          onTap: () {},
                        ),
                      ),
                    ),
                  ),
                  const Text('Testing Home Screen'),
                  ElevatedButton(
                    onPressed: () => context.router.push(
                      const RandomMeal(),
                    ),
                    child: const Text('hello'),
                  ),
                ],
              ),
            ),
          );
  }
}

class CentredLoadingIndicator extends HookWidget {
  const CentredLoadingIndicator();

  @override
  Widget build(BuildContext context) => const Center(
        child: CircularProgressIndicator.adaptive(),
      );
}
