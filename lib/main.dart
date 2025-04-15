import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainer_dashboard/view/core/style/theme_manager.dart';
import 'package:trainer_dashboard/view/dummy_screen.dart';
import 'package:trainer_dashboard/view/navigation_bar_screen.dart';
import 'package:trainer_dashboard/viewModel/navigation_bar_provider.dart';
import 'package:trainer_dashboard/viewModel/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationBarProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeProvider.isDarkMode ? ThemeManager.dark : ThemeManager.light,
      initialRoute: '/NavScreen',
      routes: {
        '/NavScreen': (context) => const NavigationBarScreen(),
        '/dummyScreen': (context) => const DummyScreen(),
      },
      home: const NavigationBarScreen(),
    );
  }
}
