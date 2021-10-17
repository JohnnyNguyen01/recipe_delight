import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipe_app/application/view_models/home/home_view_model.dart';
import 'package:recipe_app/presentation/widgets/video_player.dart';
import 'package:recipe_app/utils/hooks.dart';
import 'package:recipe_app/utils/theme.dart';

class HomeScreen extends HookWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    final viewState = useProvider(homeViewModelProvider);
    final theme = useTheme();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                title: Text('Ingredients', style: theme.textTheme.headline6),
                subtitle: Text(
                  'tap to find what you need to make this dish',
                  style: theme.textTheme.subtitle2,
                ),
                children: [
                  for (final ingredientDetail
                      in viewState.meal.ingredientDetails)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: UIListTile(
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
                title: Text('Video Tutorial', style: theme.textTheme.headline6),
                subtitle: Text(
                  'tap to view a guided video',
                  style: theme.textTheme.subtitle2,
                ),
                children: [VideoPlayer(videoUrl: viewState.meal.videoUrl)],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class UIListTile extends HookWidget {
  const UIListTile({
    required final this.title,
    final this.imageUrl,
    final this.subtitle,
  });

  final String title;
  final String? subtitle;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final checkboxChecked = useState(false);
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      tileColor: theme.backgroundColor,
      leading: !(imageUrl != null)
          ? null
          : Container(
              constraints: const BoxConstraints(maxWidth: 40, maxHeight: 40),
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(imageUrl ?? '')),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
      title: Text(
        title,
        style: theme.textTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.w600,
          decoration: checkboxChecked.value ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle ?? '',
              style: theme.textTheme.subtitle1?.copyWith(
                decoration:
                    checkboxChecked.value ? TextDecoration.lineThrough : null,
              ),
            )
          : null,
      trailing: Checkbox(
        value: checkboxChecked.value,
        onChanged: (value) {
          if (value != null) {
            checkboxChecked.value = value;
          }
        },
      ),
    );
  }
}

class UIChip extends HookWidget {
  const UIChip({
    required final this.label,
    final this.backgroundColor,
    final this.labelColor,
  });

  final String label;
  final Color? backgroundColor;
  final Color? labelColor;
  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    return Chip(
      label: Text(
        label,
        style: theme.textTheme.bodyText1?.copyWith(
          color: labelColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: backgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }
}
