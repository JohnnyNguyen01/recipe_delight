import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/application/view_models/random_meal/random_meal_view_model.dart';
import 'package:recipe_app/presentation/widgets/ingredient_detail_list_tile.dart';
import 'package:recipe_app/presentation/widgets/ui/ui_chip.dart';
import 'package:recipe_app/presentation/widgets/ui/ui_fab.dart';
import 'package:recipe_app/presentation/widgets/video_player.dart';
import 'package:recipe_app/utils/hooks.dart';
import 'package:recipe_app/utils/theme.dart';
import 'package:auto_route/auto_route.dart';

class RandomMealScreen extends HookWidget {
  const RandomMealScreen();

  @override
  Widget build(BuildContext context) {
    final viewState = useProvider(randomMealViewModelProvider);
    final theme = useTheme();

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UIFab(
                  child: const Icon(Icons.arrow_back),
                  size: FABSize.small,
                  onTap: () => context.router.pop(),
                ),
                const SizedBox(height: 12),
                for (final category in viewState.meal.categories)
                  UIChip(
                    label: category,
                    labelColor: theme.colorScheme.secondary,
                    backgroundColor: theme.colorScheme.secondaryAccent,
                  ),
                const SizedBox(height: 8),
                Text(
                  viewState.meal.name,
                  style: theme.textTheme.headline5,
                ),
                const SizedBox(height: 12),
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(viewState.meal.imageUrl),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ExpansionTile(
                  title: Text(
                    'Ingredients',
                    style: theme.textTheme.headline6,
                  ),
                  subtitle: Text(
                    'tap to find what you need to make this dish',
                    style: theme.textTheme.subtitle2,
                  ),
                  children: [
                    for (final ingredientDetail
                        in viewState.meal.ingredientDetails)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: IngredientDetailListTile(
                          title: ingredientDetail.name ?? '',
                          subtitle: ingredientDetail.measurement,
                          imageUrl: ingredientDetail.thumbnailUrl,
                        ),
                      ),
                  ],
                ),
                ExpansionTile(
                  title: Text('Instructions', style: theme.textTheme.headline6),
                  subtitle: Text(
                    'tap to start making this dish',
                    style: theme.textTheme.subtitle2,
                  ),
                  children: [
                    for (final instruction in viewState.meal.instructions)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: ListTile(
                          title: Text(instruction),
                        ),
                      )
                  ],
                ),
                ExpansionTile(
                  title:
                      Text('Video Tutorial', style: theme.textTheme.headline6),
                  subtitle: Text(
                    'tap to view a guided video',
                    style: theme.textTheme.subtitle2,
                  ),
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: VideoPlayer(videoUrl: viewState.meal.videoUrl),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
