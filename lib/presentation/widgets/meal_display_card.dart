import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:recipe_app/presentation/widgets/ui/ui_chip.dart';
import 'package:recipe_app/utils/hooks.dart';

class MealDisplayCard extends HookWidget {
  const MealDisplayCard({
    required this.title,
    required this.subtitle,
    required this.category,
    required this.imageUrl,
    this.onTap,
    this.cardWidth,
    this.cardHeight,
  });

  final String title;
  final String subtitle;
  final String category;
  final String? imageUrl;
  final double? cardHeight;
  final double? cardWidth;
  final VoidCallback? onTap;
  static const _defaultCardHeight = 240.0;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    final screenSize = useScreenSize();
    final usedCardHeight = cardHeight ?? _defaultCardHeight;
    return SizedBox(
      height: _defaultCardHeight,
      child: Stack(
        children: [
          if (imageUrl != null)
            Container(
              height: usedCardHeight,
              width: cardWidth ?? screenSize.width,
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0.2, 0.8, 1],
                  colors: [
                    Colors.black87,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black87,
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                    imageUrl ?? '',
                  ),
                ),
              ),
            ),
          // Category Chip
          Positioned(
            top: 16,
            left: 16,
            child: UIChip(
              label: category,
              backgroundColor: theme.colorScheme.onSurface,
              labelColor: theme.colorScheme.surface,
            ),
          ),
          Positioned(
            top: usedCardHeight - 100,
            left: 16,
            child: Text(
              title,
              style: theme.textTheme.headline4?.copyWith(
                color: theme.colorScheme.surface,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: usedCardHeight - 48,
            left: 16,
            child: Text(
              subtitle,
              style: theme.textTheme.headline6?.copyWith(
                color: theme.colorScheme.surface,
              ),
            ),
          ),
          InkWell(
            onTap: onTap,
            child: SizedBox(
              width: cardWidth ?? screenSize.width,
              height: usedCardHeight,
            ),
          )
        ],
      ),
    );
  }
}
