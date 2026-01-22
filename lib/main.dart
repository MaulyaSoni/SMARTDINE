import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/theme.dart';
import 'shared/widgets/custom_button.dart';
import 'flavors/dev.dart';

void main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lab 3 Flutter Setup",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Project Setup")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Project Ready"),
              const SizedBox(height: 10),
              Text("Environment: ${FlavorConfig.env}"),
              const SizedBox(height: 20),
              CustomButton(
                text: "Test Button",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
