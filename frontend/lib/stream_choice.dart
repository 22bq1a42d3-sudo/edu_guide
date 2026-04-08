import 'package:flutter/material.dart';

class StreamChoicePage extends StatelessWidget {
  const StreamChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final streams = ["MPC", "BiPC", "CEC", "MEC"];

    return Scaffold(
      appBar: AppBar(title: const Text("Choose Your Stream")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: streams.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              title: Text(streams[index]),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/courseOptions',
                  arguments: streams[index],   // e.g., "MPC"
                  );

              },
            ),
          );
        },
      ),
    );
  }
}
