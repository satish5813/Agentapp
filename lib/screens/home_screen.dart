import 'package:flutter/material.dart';
import '../models/task.dart';
import 'task_list_screen.dart';
import 'map_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.role});

  final String role;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  late final List<Task> _tasks;

  @override
  void initState() {
    super.initState();
    // Example tasks
    _tasks = [
      Task(
        id: '1',
        customerName: 'John Doe',
        address: '123 Main St',
        time: DateTime.now(),
        contact: '555-1234',
      ),
      Task(
        id: '2',
        customerName: 'Jane Smith',
        address: '456 Oak Ave',
        time: DateTime.now().add(const Duration(hours: 2)),
        contact: '555-5678',
      ),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      TaskListScreen(tasks: _tasks),
      const MapScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Welcome, ${widget.role}')),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
