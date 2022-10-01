import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/models/task_manager.dart';

class EmptyTaskScreen extends StatelessWidget {
  const EmptyTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
    );
  }
}
