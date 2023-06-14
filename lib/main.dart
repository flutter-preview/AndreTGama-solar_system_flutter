import 'package:flutter/material.dart';
import 'package:solar_system_app/Screens/Planet/planet_screen.dart';
import 'package:solar_system_app/Screens/Welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solar System',
      theme: ThemeData(),
      home: const WelcomeScreen()
    );
  }
}