import 'package:flutter/material.dart';

class RoadmapPage extends StatelessWidget {
  const RoadmapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String course = ModalRoute.of(context)!.settings.arguments as String;

    final Map<String, List<String>> roadmaps = {
      // MPC Stream Courses
      "Engineering": [
        "🎓 Higher Studies: M.Tech, MS Abroad",
        "💼 Jobs: Software Engineer, Civil Engineer, Data Scientist",
        "🏢 Industries: IT, Core Engineering, Research Labs",
      ],
      "Architecture": [
        "🎓 Higher Studies: Masters in Architecture, Urban Planning",
        "💼 Jobs: Architect, Interior Designer, Urban Planner",
        "🏢 Industries: Construction, Real Estate, Govt Projects",
      ],
      "Defense Services": [
        "🎓 Entry: NDA, CDS Exams",
        "💼 Roles: Army, Navy, Air Force Officer",
        "🏢 Career: Defense, Paramilitary, Research Wings",
      ],
      "Aviation": [
        "🎓 Courses: B.Sc Aviation, CPL Training",
        "💼 Jobs: Pilot, Air Traffic Controller, Ground Staff",
        "🏢 Career: Airlines, Airports, Defense Aviation",
      ],

      // BiPC Stream Courses
      "Medicine": [
        "🎓 Higher Studies: MD, MS, Specializations",
        "💼 Jobs: Doctor, Surgeon, Research Scientist",
        "🏢 Career: Hospitals, Clinics, Medical Colleges",
      ],
      "Pharmacy": [
        "🎓 Higher Studies: M.Pharm, Pharm.D",
        "💼 Jobs: Pharmacist, Drug Inspector, Clinical Researcher",
        "🏢 Industries: Pharma Companies, Hospitals, R&D",
      ],
      "Nursing": [
        "🎓 Higher Studies: M.Sc Nursing, Nursing Administration",
        "💼 Jobs: Nurse, Medical Assistant, Health Educator",
        "🏢 Career: Hospitals, NGOs, Military Hospitals",
      ],

      // CEC Stream Courses
      "Law": [
        "🎓 Higher Studies: LLM, Judiciary Exams",
        "💼 Jobs: Lawyer, Judge, Legal Advisor",
        "🏢 Career: Courts, Corporate Firms, NGOs",
      ],
      "CA": [
        "🎓 Certification: Chartered Accountant",
        "💼 Jobs: Auditor, Tax Consultant, Financial Analyst",
        "🏢 Industries: Finance, Banking, Corporate Firms",
      ],
      "Banking": [
        "🎓 Exams: IBPS, RBI, SBI PO",
        "💼 Jobs: Bank Manager, Financial Advisor",
        "🏢 Career: Banks, Insurance Companies, NBFCs",
      ],

      // MEC Stream Courses
      "Economics": [
        "🎓 Higher Studies: MA Economics, PhD",
        "💼 Jobs: Economist, Data Analyst, Policy Maker",
        "🏢 Career: Govt, Research, Corporates, NGOs",
      ],
      "B.Com": [
        "🎓 Higher Studies: MBA, M.Com",
        "💼 Jobs: Accountant, Business Analyst",
        "🏢 Career: Banks, MNCs, Startups",
      ],
      "Business Analytics": [
        "🎓 Higher Studies: MBA Analytics, MS Data Analytics",
        "💼 Jobs: Data Analyst, BI Specialist, Market Researcher",
        "🏢 Career: Tech Companies, Finance, Consulting",
      ],
    };

    return Scaffold(
      appBar: AppBar(
        title: Text("Career Roadmap: $course"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: roadmaps.containsKey(course)
            ? ListView.builder(
                itemCount: roadmaps[course]!.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: const Icon(Icons.arrow_forward_ios,
                          color: Colors.indigo),
                      title: Text(
                        roadmaps[course]![index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                },
              )
            : const Center(
                child: Text(
                  "Roadmap coming soon for this course...",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
          ),
          onPressed: () {
            Navigator.pop(context); // back to skills or course options
          },
          child: const Text(
            "Start Course ✅",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
