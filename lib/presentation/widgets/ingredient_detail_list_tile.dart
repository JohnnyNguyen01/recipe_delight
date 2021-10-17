import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:recipe_app/utils/hooks.dart';

class IngredientDetailListTile extends HookWidget {
  const IngredientDetailListTile({
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
