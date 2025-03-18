import 'package:flutter/material.dart';
import 'course_details.dart';

class CoursesPage extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'title': 'Flutter for Beginners',
      'image': '../assets/flutter.png',
      'description': 'Learn the basics of Flutter and build your first app.',
      'details': 'This course covers Dart, widgets, and state management for beginners.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=fq4N0hgOWzU',
    },
    {
      'title': 'Advanced Flutter Development',
      'image': '../assets/flutter_advanced.png',
      'description': 'Master complex Flutter concepts like state management.',
      'details': 'Explore Bloc, Provider, animations, and performance optimization.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=1gDhl4leEzA',
    },
    {
      'title': 'React.js Essentials',
      'image': '../assets/reactjs.png',
      'description': 'Develop modern web apps using React.js.',
      'details': 'Learn React fundamentals, hooks, state management, and component lifecycle.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=bMknfKXIFA8',
    },
    {
      'title': 'Full-Stack Web Development',
      'image': '../assets/web_dev.png',
      'description': 'Become a full-stack developer with front & backend skills.',
      'details': 'Covers HTML, CSS, JavaScript, React.js, and databases.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=nu_pCVPKzTk',
    },
    {
      'title': 'Backend Development with Node.js',
      'image': '../assets/nodejs.png',
      'description': 'Learn how to build scalable backend services using Node.js.',
      'details': 'Includes Express.js, databases, authentication, and APIs.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=Oe421EPjeBE',
    },
    {
      'title': 'Mastering PHP',
      'image': '../assets/php.png',
      'description': 'Build powerful web apps using PHP and MySQL.',
      'details': 'Learn PHP fundamentals, OOP, authentication, and database interactions.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=OK_JCtrrv-c',
    },
    {
      'title': 'Laravel for Web Development',
      'image': '../assets/laravel.png',
      'description': 'Create modern web apps with Laravel, the PHP framework.',
      'details': 'Covers MVC architecture, authentication, APIs, and database migrations.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=ImtZ5yENzgE',
    },
    {
      'title': 'UI/UX Design for Developers',
      'image': '../assets/uiux.png',
      'description': 'Understand UI/UX principles to create user-friendly interfaces.',
      'details': 'Focus on wireframing, typography, colors, and accessibility.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=3QjLeVtVf6o',
    },
    {
      'title': 'Cloud Computing with AWS',
      'image': '../assets/aws.png',
      'description': 'Learn cloud infrastructure and AWS services for scalability.',
      'details': 'Covers EC2, S3, Lambda, IAM, and serverless architecture.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=ulprqHHWlng',
    },
    {
      'title': 'Data Structures & Algorithms',
      'image': '../assets/dsa.png',
      'description': 'Master problem-solving skills with DSA.',
      'details': 'Covers arrays, linked lists, trees, graphs, sorting & searching algorithms.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=8hly31xKli0',
    },
    {
      'title': 'DevOps & CI/CD',
      'image': '../assets/devops.png',
      'description': 'Automate deployment with DevOps best practices.',
      'details': 'Includes Docker, Kubernetes, CI/CD pipelines, and monitoring tools.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=VQTFmdI8KPA',
    },
    {
      'title': 'Cybersecurity & Ethical Hacking',
      'image': '../assets/cybersecurity.png',
      'description': 'Learn ethical hacking and cybersecurity fundamentals.',
      'details': 'Covers penetration testing, network security, and vulnerability analysis.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=3Kq1MIfTWCE',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Image.asset(
          '../assets/logo.png',
          height: 60,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseDetailsPage(
                      title: courses[index]['title']!,
                      image: courses[index]['image']!,
                      description: courses[index]['description']!,
                      details: courses[index]['details']!,
                      youtubeUrl: courses[index]['youtubeUrl']!,
                    ),
                  ),
                );
              },
              child: CourseCard(
                title: courses[index]['title']!,
                image: courses[index]['image']!,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String image;

  CourseCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
