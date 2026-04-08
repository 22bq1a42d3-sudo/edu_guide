import 'package:flutter/material.dart';

class SkillsRequiredPage extends StatefulWidget {
  const SkillsRequiredPage({super.key});

  @override
  State<SkillsRequiredPage> createState() => _SkillsRequiredPageState();
}

class _SkillsRequiredPageState extends State<SkillsRequiredPage> {
  int? selectedIndex; // store selected skill index

  @override
  Widget build(BuildContext context) {
    final String course = ModalRoute.of(context)!.settings.arguments as String;

    // Skills for each course
    final skills = {
      // --- MPC Stream ---
      "Engineering": [
        "Strong foundation in Mathematics & Physics",
        "Problem-solving and logical reasoning",
        "Creativity & innovation",
        "Technical aptitude"
      ],
      "Architecture": [
        "Good drawing & design skills",
        "Spatial imagination",
        "Creativity & innovation",
        "Knowledge of geometry & measurements"
      ],
      "Defense Services": [
        "Physical fitness & stamina",
        "Leadership qualities",
        "Decision-making skills",
        "Discipline & teamwork"
      ],
      "Aviation": [
        "Strong Mathematics & Physics basics",
        "Quick decision-making",
        "Good communication skills",
        "Ability to handle pressure"
      ],
      "Merchant Navy": [
        "Navigation & technical knowledge",
        "Teamwork & discipline",
        "Adaptability to sea life",
        "Problem-solving under pressure"
      ],
      "B.Sc (Maths/Physics)": [
        "Strong theoretical knowledge",
        "Analytical thinking",
        "Research skills",
        "Curiosity for science concepts"
      ],
      "Computer Applications": [
        "Programming knowledge (C/Java/Python)",
        "Logical thinking",
        "Problem-solving skills",
        "Interest in software development"
      ],
      "Data Science & AI": [
        "Strong statistics & probability",
        "Programming in Python/R",
        "Analytical & problem-solving skills",
        "Knowledge of Machine Learning basics"
      ],

      // --- BiPC Stream ---
      "Medicine": [
        "Deep interest in Biology & human anatomy",
        "Patience & empathy",
        "Ability to handle stress",
        "Observation & memory skills"
      ],
      "Pharmacy": [
        "Knowledge of Chemistry & Biology",
        "Attention to detail",
        "Analytical thinking",
        "Interest in medical research"
      ],
      "Agriculture": [
        "Interest in plants & farming techniques",
        "Knowledge of Biology & Chemistry",
        "Research & observation skills",
        "Problem-solving in crop production"
      ],
      "Veterinary Science": [
        "Love for animals",
        "Patience & compassion",
        "Strong Biology knowledge",
        "Practical handling skills"
      ],
      "Physiotherapy": [
        "Knowledge of human anatomy",
        "Patience & empathy",
        "Communication skills",
        "Problem-solving ability"
      ],
      "Nursing": [
        "Caring & compassionate nature",
        "Strong Biology & medical basics",
        "Ability to work under pressure",
        "Teamwork & communication skills"
      ],
      "Biotechnology": [
        "Interest in Biology & Chemistry",
        "Lab research skills",
        "Analytical thinking",
        "Problem-solving & innovation"
      ],
      "Food Technology": [
        "Knowledge of Chemistry & Biology",
        "Attention to hygiene & safety",
        "Research & analytical skills",
        "Interest in food processing"
      ],
      "Genetics & Microbiology": [
        "Interest in DNA, cells & microbes",
        "Research & analytical mindset",
        "Lab handling skills",
        "Attention to detail"
      ],

      // --- CEC Stream ---
      "Law": [
        "Strong communication skills",
        "Logical reasoning",
        "Critical thinking",
        "Good reading & writing ability"
      ],
      "CA": [
        "Good grasp of Accounting & Finance",
        "Analytical thinking",
        "Numerical ability",
        "Hard work & consistency"
      ],
      "Banking": [
        "Numerical & analytical skills",
        "Communication skills",
        "Problem-solving ability",
        "Knowledge of economics & finance"
      ],
      "Company Secretary": [
        "Good knowledge of Corporate Laws",
        "Analytical skills",
        "Strong communication skills",
        "Decision-making ability"
      ],
      "Hotel Management": [
        "Good communication & interpersonal skills",
        "Leadership & teamwork",
        "Problem-solving ability",
        "Customer service orientation"
      ],
      "Mass Communication": [
        "Creativity & storytelling skills",
        "Public speaking & writing ability",
        "Presentation skills",
        "Awareness of current affairs"
      ],
      "Business Administration (BBA)": [
        "Leadership & management qualities",
        "Analytical & decision-making skills",
        "Communication skills",
        "Teamwork & coordination"
      ],
      "Digital Marketing": [
        "Creativity & innovative thinking",
        "Basic knowledge of social media platforms",
        "Analytical skills",
        "Content creation & communication"
      ],
      "Civil Services Preparation": [
        "Good general knowledge & awareness",
        "Strong analytical & reasoning skills",
        "Time management & discipline",
        "Consistency & perseverance"
      ],

      // --- MEC Stream ---
      "Economics": [
        "Analytical & critical thinking",
        "Interest in current affairs & economy",
        "Numerical ability",
        "Research skills"
      ],
      "B.Com": [
        "Knowledge of Accounting & Business basics",
        "Numerical ability",
        "Communication skills",
        "Analytical thinking"
      ],
      "Chartered Accountancy": [
        "Strong foundation in Accounting & Law",
        "Numerical accuracy",
        "Analytical reasoning",
        "Hardworking & patience"
      ],
      "Actuarial Science": [
        "Excellent mathematical skills",
        "Analytical & logical reasoning",
        "Problem-solving ability",
        "Knowledge of statistics & probability"
      ],
      "Business Analytics": [
        "Knowledge of Data Analysis",
        "Programming & SQL basics",
        "Problem-solving ability",
        "Critical thinking"
      ],
      "Management Studies": [
        "Leadership & organizational skills",
        "Decision-making ability",
        "Analytical & communication skills",
        "Teamwork & coordination"
      ],
      "Statistics": [
        "Strong mathematics foundation",
        "Analytical skills",
        "Logical reasoning",
        "Problem-solving ability"
      ],
      "Finance & Investment": [
        "Numerical & analytical ability",
        "Understanding of economics & markets",
        "Risk assessment skills",
        "Decision-making ability"
      ],
      "International Trade": [
        "Knowledge of global markets",
        "Analytical & research skills",
        "Communication & negotiation skills",
        "Interest in economics & commerce"
      ],
    };

    return Scaffold(
      appBar: AppBar(title: Text("Skills Required - $course")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Minimum Skills Required for $course:",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: skills[course]?.length ?? 0,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Card(
                      color: isSelected ? Colors.indigo.shade100 : Colors.white,
                      child: ListTile(
                        leading: Icon(
                          isSelected
                              ? Icons.check_circle
                              : Icons.circle_outlined,
                          color: isSelected ? Colors.indigo : Colors.grey,
                        ),
                        title: Text(skills[course]![index]),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/roadmap', arguments: course);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text("Continue"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
