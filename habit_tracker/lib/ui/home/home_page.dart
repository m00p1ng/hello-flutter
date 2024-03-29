import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_tracker/models/task.dart';
import 'package:habit_tracker/persistence/hive_data_store.dart';
import 'package:habit_tracker/ui/home/tasks_grid_page.dart';
import 'package:habit_tracker/ui/sliding_panel/sliding_panel_animator.dart';
import 'package:habit_tracker/ui/theming/app_theme_manager.dart';
import 'package:hive/hive.dart';
import 'package:page_flip_builder/page_flip_builder.dart';

class HomePage extends StatelessWidget {
  final _pageFlipKey = GlobalKey<PageFlipBuilderState>();
  final _frontSlidingPanelLeftAnimatorKey =
      GlobalKey<SlidingPanelAnimatorState>();
  final _frontSlidingPanelRightAnimatorKey =
      GlobalKey<SlidingPanelAnimatorState>();
  final _backSlidingPanelLeftAnimatorKey =
      GlobalKey<SlidingPanelAnimatorState>();
  final _backSlidingPanelRightAnimatorKey =
      GlobalKey<SlidingPanelAnimatorState>();

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final dataStore = ref.watch(dataStoreProvider);
      return Container(
        color: Colors.black,
        child: PageFlipBuilder(
          key: _pageFlipKey,
          frontBuilder: (_) => ValueListenableBuilder(
            valueListenable: dataStore.frontTasksListenable(),
            builder: (_, Box<Task> box, __) => TasksGridPage(
              leftAnimatorKey: _frontSlidingPanelLeftAnimatorKey,
              rightAnimatorKey: _frontSlidingPanelRightAnimatorKey,
              tasks: box.values.toList(),
              onFlip: () => _pageFlipKey.currentState?.flip(),
              themeSettings: ref.watch(frontThemeManagerProvider),
              onColorIndexSelected: (colorIndex) => ref
                  .read(frontThemeManagerProvider.notifier)
                  .updateColorIndex(colorIndex),
              onVariantIndexSelected: (variantIndex) => ref
                  .read(frontThemeManagerProvider.notifier)
                  .updateVariantIndex(variantIndex),
            ),
          ),
          backBuilder: (_) => ValueListenableBuilder(
            valueListenable: dataStore.backTasksListenable(),
            builder: (_, Box<Task> box, __) => TasksGridPage(
              leftAnimatorKey: _backSlidingPanelLeftAnimatorKey,
              rightAnimatorKey: _backSlidingPanelRightAnimatorKey,
              tasks: box.values.toList(),
              onFlip: () => _pageFlipKey.currentState?.flip(),
              themeSettings: ref.watch(backThemeManagerProvider),
              onColorIndexSelected: (colorIndex) => ref
                  .read(backThemeManagerProvider.notifier)
                  .updateColorIndex(colorIndex),
              onVariantIndexSelected: (variantIndex) => ref
                  .read(backThemeManagerProvider.notifier)
                  .updateVariantIndex(variantIndex),
            ),
          ),
        ),
      );
    });
  }
}
