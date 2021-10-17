import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:recipe_app/utils/hooks.dart';

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
