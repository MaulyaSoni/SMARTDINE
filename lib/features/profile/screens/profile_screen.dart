import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile & Settings")),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            12,
            (index) => ListTile(
              leading: const Icon(Icons.settings),
              title: Text("Setting Option ${index + 1}"),
            ),
          ),
        ),
      ),
    );
  }
}
