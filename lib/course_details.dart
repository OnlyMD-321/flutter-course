import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import to open YouTube links

class CourseDetailsPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final String details;
  final String youtubeUrl;

  CourseDetailsPage({
    required this.title,
    required this.image,
    required this.description,
    required this.details,
    required this.youtubeUrl,
  });

  void _launchURL() async {
    if (await canLaunch(youtubeUrl)) {
      await launch(youtubeUrl);
    } else {
      throw 'Could not launch $youtubeUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(image, height: 200, fit: BoxFit.cover),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              details,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _launchURL,
              icon: Icon(Icons.play_arrow),
              label: Text("Watch on YouTube"),
            ),
          ],
        ),
      ),
    );
  }
}
