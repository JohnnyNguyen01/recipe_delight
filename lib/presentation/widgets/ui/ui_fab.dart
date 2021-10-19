import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:recipe_app/utils/hooks.dart';

enum FABSize {
  small,
  medium,
  large,
}

/// Common Floating Action button used in app
class UIFab extends HookWidget {
  const UIFab({
    required this.child,
    required this.size,
    this.onTap,
  });

  final Widget child;
  final FABSize size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();
    switch (size) {
      case FABSize.small:
        return FloatingActionButton.small(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: theme.colorScheme.surface,
          onPressed: onTap,
          child: child,
        );
      case FABSize.medium:
        return FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: theme.colorScheme.surface,
          onPressed: onTap,
          child: child,
        );
      case FABSize.large:
        return FloatingActionButton.large(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: theme.colorScheme.surface,
          onPressed: onTap,
          child: child,
        );
    }
  }
}
