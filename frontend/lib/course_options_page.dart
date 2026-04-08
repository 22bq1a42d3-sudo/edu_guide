import 'package:flutter/material.dart';

class CourseOptionsPage extends StatelessWidget {
  const CourseOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String stream = ModalRoute.of(context)!.settings.arguments as String;

    final courses = {
      "MPC": [
        "Engineering",
        "Architecture",
        "Defense Services",
        "Aviation",
        "Merchant Navy",
        "B.Sc (Maths/Physics)",
        "Computer Applications",
        "Data Science & AI"
      ],
      "BiPC": [
        "Medicine",
        "Pharmacy",
        "Agriculture",
        "Veterinary Science",
        "Physiotherapy",
        "Nursing",
        "Biotechnology",
        "Food Technology",
        "Genetics & Microbiology"
      ],
      "CEC": [
        "Law",
        "CA",
        "Banking",
        "Company Secretary",
        "Hotel Management",
        "Mass Communication",
        "Business Administration (BBA)",
        "Digital Marketing",
        "Civil Services Preparation"
      ],
      "MEC": [
        "Economics",
        "B.Com",
        "Chartered Accountancy",
        "Actuarial Science",
        "Business Analytics",
        "Management Studies",
        "Statistics",
        "Finance & Investment",
        "International Trade"
      ],
    };

    return Scaffold(
      appBar: AppBar(title: Text("Options for $stream")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: courses[stream]!.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: Text(courses[stream]![index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(context, '/roadmap', arguments: courses[stream]![index]);
              },
            ),
          );
        },
      ),
    );
  }
}
