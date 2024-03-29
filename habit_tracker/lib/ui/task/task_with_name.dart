import 'package:flutter/material.dart';
import 'package:habit_tracker/constants/text_styles.dart';
import 'package:habit_tracker/models/task.dart';
import 'package:habit_tracker/ui/task/animated_task.dart';
import 'package:habit_tracker/ui/theming/app_theme.dart';

class TaskWithName extends StatelessWidget {
  const TaskWithName({
    required this.task,
    this.completed = false,
    this.onCompleted,
  });
  final Task task;
  final bool completed;
  final ValueChanged<bool>? onCompleted;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedTask(
          iconName: task.iconName,
          completed: completed,
          onCompleted: onCompleted,
        ),
        SizedBox(height: 8.0),
        Text(
          task.name.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyles.taskName.copyWith(
            color: AppTheme.of(context).accent,
          ),
        ),
      ],
    );
  }
}
