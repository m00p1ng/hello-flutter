import 'package:flutter/material.dart';
import 'package:habit_tracker/constants/app_assets.dart';
import 'package:habit_tracker/models/task_preset.dart';
import 'package:habit_tracker/ui/home/tasks_grid.dart';
import 'package:habit_tracker/ui/theming/app_theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).primary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
        child: TasksGrid(
          tasks: const [
            TaskPreset(name: 'Eat a Healthy Meal', iconName: AppAssets.carrot),
            TaskPreset(name: 'Walk the Dog', iconName: AppAssets.dog),
            TaskPreset(name: 'Do Some Coding', iconName: AppAssets.html),
            TaskPreset(name: 'Meditate', iconName: AppAssets.meditation),
            TaskPreset(name: 'Do 10 Pushups', iconName: AppAssets.pushups),
            TaskPreset(name: 'Sleep 8 Hours', iconName: AppAssets.rest),
          ],
        ),
      ),
    );
  }
}
