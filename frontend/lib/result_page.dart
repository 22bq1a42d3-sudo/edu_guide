import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String result = ModalRoute.of(context)!.settings.arguments as String? ?? "No result";

    return Scaffold(
      appBar: AppBar(title: const Text("Your Result")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "🎉 Congratulations! Your best career choice is: $result",
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
