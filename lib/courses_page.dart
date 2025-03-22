import 'package:flutter/material.dart';
import 'course_details.dart';

class CoursesPage extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'title': 'Flutter for Beginners',
      'image': '../assets/flutter.png',
      'description': 'Learn the basics of Flutter and build your first mobile application.',
      'details': 'This course introduces the Dart programming language, Flutter widgets, and state management concepts. '
          'You will learn how to structure a Flutter project, create UI components, and handle user interactions. '
          'Additionally, the course covers navigation between screens and best practices for responsive design. '
          'By the end of the course, you will have built a fully functional Flutter app from scratch. '
          'Ideal for beginners with little or no mobile development experience.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=fq4N0hgOWzU',
    },
    {
      'title': 'Advanced Flutter Development',
      'image': '../assets/flutter_advanced.png',
      'description': 'Master complex Flutter concepts and improve your app development skills.',
      'details': 'This course is designed for developers who have a basic understanding of Flutter and want to level up their skills. '
          'It covers state management using Provider and Bloc, integrating Firebase for authentication and database management, '
          'optimizing app performance, and using animations to enhance user experience. '
          'Additionally, the course delves into testing strategies and debugging techniques. '
          'By the end of the course, you will be able to build high-performance, scalable Flutter applications.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=1gDhl4leEzA',
    },
    {
      'title': 'React.js Essentials',
      'image': '../assets/reactjs.png',
      'description': 'Develop modern web applications using React.js and its core concepts.',
      'details': 'This course focuses on the fundamental concepts of React.js, including components, props, and state. '
          'You will learn how to manage application state using hooks, handle events, and interact with APIs. '
          'The course also covers the use of React Router for navigation and best practices for organizing components. '
          'By the end of the course, you will have built a fully functional React application. '
          'Perfect for front-end developers looking to transition into modern JavaScript frameworks.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=bMknfKXIFA8',
    },
    {
      'title': 'Full-Stack Web Development',
      'image': '../assets/web_dev.png',
      'description': 'Become a full-stack developer with front-end and back-end skills.',
      'details': 'This course provides a comprehensive introduction to full-stack web development. '
          'It covers front-end technologies such as HTML, CSS, and JavaScript, as well as back-end development using Node.js and Express.js. '
          'You will learn how to work with databases like MongoDB or PostgreSQL and how to implement authentication. '
          'Additionally, the course includes a section on deployment, enabling you to take your applications live. '
          'By the end of this course, you will have built a full-stack web application from scratch.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=nu_pCVPKzTk',
    },
    {
      'title': 'Backend Development with Node.js',
      'image': '../assets/nodejs.png',
      'description': 'Learn how to build scalable backend services using Node.js.',
      'details': 'This course covers the essentials of backend development using Node.js. '
          'You will explore the Express.js framework to create RESTful APIs and learn how to integrate databases like MongoDB. '
          'Topics include authentication using JWT, error handling, and middleware implementation. '
          'The course also introduces microservices and best practices for scaling applications. '
          'By the end of the course, you will be able to create and deploy robust backend systems.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=Oe421EPjeBE',
    },
    {
      'title': 'Mastering PHP',
      'image': '../assets/php.png',
      'description': 'Build powerful web applications using PHP and MySQL.',
      'details': 'This course teaches you how to develop dynamic web applications using PHP. '
          'You will learn about PHP syntax, object-oriented programming, and working with MySQL databases. '
          'Topics include form handling, user authentication, session management, and CRUD operations. '
          'The course also covers security best practices to prevent SQL injection and XSS attacks. '
          'By the end of the course, you will be able to create fully functional PHP web applications.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=OK_JCtrrv-c',
    },
    {
      'title': 'Laravel for Web Development',
      'image': '../assets/laravel.png',
      'description': 'Create modern web applications using Laravel, the PHP framework.',
      'details': 'This course focuses on Laravel, one of the most popular PHP frameworks. '
          'You will learn about the MVC architecture, routing, database migrations, and Eloquent ORM. '
          'Topics include authentication, middleware, API development, and working with Blade templates. '
          'The course also covers deployment strategies for Laravel applications. '
          'By the end of the course, you will have built a fully functional Laravel-based web application.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=ImtZ5yENzgE',
    },
    {
      'title': 'Cloud Computing with AWS',
      'image': '../assets/aws.png',
      'description': 'Learn cloud infrastructure and AWS services for scalability.',
      'details': 'This course introduces cloud computing and how AWS provides scalable solutions. '
          'You will learn about EC2 for virtual machines, S3 for storage, and IAM for user access control. '
          'Other topics include AWS Lambda for serverless computing and API Gateway for managing APIs. '
          'The course also covers AWS best practices, cost optimization, and security measures. '
          'By the end of the course, you will be proficient in deploying and managing applications on AWS.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=ulprqHHWlng',
    },
    {
      'title': 'Data Structures & Algorithms',
      'image': '../assets/dsa.png',
      'description': 'Master problem-solving skills with Data Structures & Algorithms.',
      'details': 'This course covers fundamental data structures such as arrays, linked lists, stacks, and queues. '
          'You will learn about searching and sorting algorithms, including binary search and quicksort. '
          'Topics include graph algorithms, dynamic programming, and algorithmic complexity analysis. '
          'The course emphasizes coding problems and interview preparation techniques. '
          'By the end of this course, you will have a solid foundation in DSA for coding interviews and problem-solving.',
      'youtubeUrl': 'https://www.youtube.com/watch?v=8hly31xKli0',
    },
    {
      'title': 'Cybersecurity & Ethical Hacking',
      'image': '../assets/cybersecurity.png',
      'description': 'Learn ethical hacking and cybersecurity fundamentals.',
      'details': 'This course introduces cybersecurity concepts, including threat analysis and network security. '
          'You will learn about penetration testing, ethical hacking tools, and vulnerability assessments. '
          'The course covers topics such as password cracking, web security, and social engineering attacks. '
          'Hands-on exercises will help you understand how to secure systems from potential threats. '
          'By the end of the course, you will have foundational skills to pursue cybersecurity certifications.',
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
