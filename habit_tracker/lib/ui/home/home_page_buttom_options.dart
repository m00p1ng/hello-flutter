import 'package:flutter/material.dart';
import 'package:habit_tracker/ui/theming/app_theme.dart';

class HomePageBottomOptions extends StatelessWidget {
  const HomePageBottomOptions({
    super.key,
    this.onFlip,
    this.onEnterEditMode,
  });
  final VoidCallback? onFlip;
  final VoidCallback? onEnterEditMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onEnterEditMode,
          icon: Icon(
            Icons.settings,
            color: AppTheme.of(context).settingsLabel,
          ),
        ),
        IconButton(
          onPressed: onFlip,
          icon: Icon(
            Icons.flip,
            color: AppTheme.of(context).settingsLabel,
          ),
        ),
        Opacity(
          opacity: 0,
          child: IconButton(
            onPressed: onEnterEditMode,
            icon: Icon(
              Icons.settings,
              color: AppTheme.of(context).settingsLabel,
            ),
          ),
        ),
      ],
    );
  }
}
