import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habit_tracker/models/task.dart';
import 'package:habit_tracker/models/task_state.dart';
import 'package:habit_tracker/persistence/hive_data_store.dart';
import 'package:habit_tracker/ui/task/task_with_name.dart';
import 'package:hive/hive.dart';

class TaskWithNameLoader extends ConsumerWidget {
  const TaskWithNameLoader({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataStore = ref.watch(dataStoreProvider);
    return ValueListenableBuilder(
      valueListenable: dataStore.taskStateListenable(task: task),
      builder: (context, Box<TaskState> box, _) {
        final taskState = dataStore.taskState(box, task:task);
        return TaskWithName(
          task: task,
          completed: taskState.completed,
          onCompleted: (completed) {
            ref.read(dataStoreProvider).setTaskState(task:task, completed: completed);
          },
        );
      },
    );
  }
}
