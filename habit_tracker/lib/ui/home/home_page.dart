import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_tracker/models/task.dart';
import 'package:habit_tracker/presistence/hive_data_store.dart';
import 'package:habit_tracker/ui/home/tasks_grid_page.dart';
import 'package:hive/hive.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final dataStore = ref.watch(dataStoreProvider);
      return ValueListenableBuilder(
        valueListenable: dataStore.frontTasksListenable(),
        builder: (_, Box<Task> box, __) => TasksGridPage(
          tasks: box.values.toList(),
          onFlip: () {},
        ),
      );
    });
  }
}
