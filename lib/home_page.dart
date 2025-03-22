import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'profile_page.dart';
import 'courses_page.dart';
import 'todo_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    CoursesPage(),
    ProfilePage(),
    ToDoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logout() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Logout"),
        content: Text("Are you sure you want to log out?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTap: _onItemTapped,
        logout: _logout,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onItemTapped(0),
        child: Icon(Icons.home, size: 30, color: Colors.white),
        backgroundColor: Colors.blue,
        shape: CircleBorder(), // Ensures it's circular
        elevation: 8, // Adds a nice shadow effect
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
