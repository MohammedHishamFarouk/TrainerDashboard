import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainer_dashboard/view/core/style/theme_manager.dart';
import 'package:trainer_dashboard/view/navigation_bar_screen.dart';
import 'package:trainer_dashboard/viewModel/navigation_bar_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationBarProvider()),
      ],
      child: MyApp(),
    ),
  );
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
