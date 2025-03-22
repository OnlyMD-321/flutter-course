import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;
  final Function logout;

  BottomNavBar({
    required this.selectedIndex,
    required this.onTap,
    required this.logout,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.person,
              color: selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            onPressed: () => onTap(1),
          ),
          IconButton(
            icon: Icon(
              Icons.checklist,
              color: selectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
            onPressed: () => onTap(2),
          ),
          SizedBox(width: 50),
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            onPressed: () => logout(),
          ),
        ],
      ),
    );
  }
}
