import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ToDoPage extends StatefulWidget {
  @override
  _ToDoPageState createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  List<Map<String, dynamic>> _tasks = [];
  TextEditingController _taskController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadTasks(); // Load saved tasks on startup
  }

  // Load saved tasks from SharedPreferences
  void _loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? taskData = prefs.getString('tasks');
    if (taskData != null) {
      setState(() {
        _tasks = List<Map<String, dynamic>>.from(jsonDecode(taskData));
      });
    }
  }

  // Save tasks to SharedPreferences
  void _saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('tasks', jsonEncode(_tasks));
  }

  // Add new task
  void _addTask(String task) {
    setState(() {
      _tasks.add({'title': task, 'done': false});
      _taskController.clear();
    });
    _saveTasks();
  }

  // Toggle task completion
  void _toggleTask(int index) {
    setState(() {
      _tasks[index]['done'] = !_tasks[index]['done'];
    });
    _saveTasks();
  }

  // Delete a task
  void _deleteTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
    _saveTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _taskController,
                    decoration: InputDecoration(
                      labelText: "Add a Task",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.blue, size: 30),
                  onPressed: () {
                    if (_taskController.text.isNotEmpty) {
                      _addTask(_taskController.text);
                    }
                  },
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Checkbox(
                    value: _tasks[index]['done'],
                    onChanged: (_) => _toggleTask(index),
                  ),
                  title: Text(
                    _tasks[index]['title'],
                    style: TextStyle(
                      decoration: _tasks[index]['done']
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => _deleteTask(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
