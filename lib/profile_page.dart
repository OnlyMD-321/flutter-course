import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            '../assets/user3.jpg', // Correct usage of AssetImage
            width: 150, // Adjust width as needed
            height: 150, // Adjust height as needed
          ),
          SizedBox(height: 20),
          Text(
            'Username: mouad_omlil',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('Email: mouad.omlil@ynov.com'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Logic for updating profile or settings can go here
            },
            child: Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
