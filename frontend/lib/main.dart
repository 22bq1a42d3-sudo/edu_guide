import 'package:flutter/material.dart';

// Import all your pages here
import 'home_page.dart';
import 'stream_choice.dart';
import 'course_options_page.dart';
import 'skills_required_page.dart';
import 'roadmap_page.dart';
import 'result_page.dart';

void main() {
  runApp(const EduGuideApp());
}

class EduGuideApp extends StatelessWidget {
  const EduGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduGuide',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // Define routes
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/streamChoice': (context) => const StreamChoicePage(),
        '/courseOptions': (context) => const CourseOptionsPage(),
        '/skills': (context) => const SkillsRequiredPage(),
        '/roadmap': (context) => const RoadmapPage(),
        '/result': (context) => const ResultPage(),
      },
    );
  }
}
