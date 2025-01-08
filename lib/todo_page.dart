import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class TodoPage extends StatelessWidget {
  final TextEditingController taskController = TextEditingController();

  void addTask() async {
    if (taskController.text.isNotEmpty) {
      await FirebaseFirestore.instance.collection('tasks').add({
        'task': taskController.text.trim(),
        'timestamp': FieldValue.serverTimestamp(),
      });
      Get.snackbar('Success', 'Task added!');
      taskController.clear();
    } else {
      Get.snackbar('Error', 'Task cannot be empty');
    }
  }

  void deleteTask(String id) async {
    await FirebaseFirestore.instance.collection('tasks').doc(id).delete();
    Get.snackbar('Success', 'Task deleted!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: taskController,
              decoration: const InputDecoration(
                labelText: 'Enter your task',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: addTask,
            child: const Text('Add Task'),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('tasks')
                  .orderBy('timestamp', descending: true)
                  .snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final tasks = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return ListTile(
                      title: Text(task['task']),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => deleteTask(task.id),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
