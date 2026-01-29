import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SmartDine")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome to SmartDine 🍽️",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  categoryCard("Starters"),
                  categoryCard("Main Course"),
                  categoryCard("Desserts"),
                  categoryCard("Drinks"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget categoryCard(String title) {
    return Card(
      elevation: 4,
      child: Center(
        child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
