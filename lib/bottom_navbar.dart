import 'package:flutter/material.dart';
import 'login_page.dart';  // Update the import path

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
      notchMargin: 8.0,  // Controls the notch size for the floating button
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.person,
                color: selectedIndex == 1 ? Colors.blue : Colors.grey,
              ),
              onPressed: () => onTap(1), // Navigate to the Profile Page
            ),
            SizedBox(),  // Empty space in the middle to push buttons to the sides
            IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              onPressed: () => logout(), // Trigger logout action
            ),
          ],
        ),
      ),
    );
  }
}
