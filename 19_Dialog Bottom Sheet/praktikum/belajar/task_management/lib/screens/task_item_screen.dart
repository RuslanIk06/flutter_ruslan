import 'package:flutter/material.dart';
import 'package:task_management/models/task_mode;l.dart';

class TaskItemScreen extends StatefulWidget {
  final Function(TaskModel) onCreate;
  const TaskItemScreen({super.key, required this.onCreate});

  @override
  State<TaskItemScreen> createState() => _TaskItemScreenState();
}

class _TaskItemScreenState extends State<TaskItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Task"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            // buildTaskNameField
            // buildButton
          ],
        ),
      ),
    );
  }
}
