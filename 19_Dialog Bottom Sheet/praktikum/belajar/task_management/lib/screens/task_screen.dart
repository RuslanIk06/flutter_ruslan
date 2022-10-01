import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/models/task_manager.dart';
import 'package:task_management/screens/empty_task_screen.dart';
import 'package:task_management/screens/task_item_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Task Managemet"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<TaskManager>(context, listen: false);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskItemScreen(
                onCreate: (task) {
                  manager.addTask(task);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      ),
      body: buildTaskScreen(),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskManager>(builder: (context, manager, child) {
      if (manager.taskModels.isNotEmpty) {
        return Container();
      } else {
        return const EmptyTaskScreen();
      }
    });
  }
}
