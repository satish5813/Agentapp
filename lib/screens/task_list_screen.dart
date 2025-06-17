import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key, required this.tasks});

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            title: Text(task.customerName),
            subtitle: Text(task.address),
            trailing: Text(task.status),
          ),
        );
      },
    );
  }
}
