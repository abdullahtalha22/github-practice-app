import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/task_model.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Task> tasks = dummyTasks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProfileScreen()),
              );
            },
          )
        ],
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (_, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task.title),
            subtitle: Text(task.description),
            trailing: Icon(
              task.isCompleted ? Icons.check_circle : Icons.pending,
              color: task.isCompleted ? Colors.green : Colors.orange,
            ),
          );
        },
      ),
    );
  }
}