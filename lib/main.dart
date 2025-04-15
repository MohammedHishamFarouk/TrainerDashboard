import 'package:flutter/material.dart';
import 'package:trainer_dashboard/core/style/theme_manager.dart';
import 'package:trainer_dashboard/navigation_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.light,
      home: NavigationBarScreen(),
    );
  }
}
