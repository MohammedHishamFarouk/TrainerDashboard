import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainer_dashboard/view/calendar_screen.dart';
import 'package:trainer_dashboard/view/core/constants/assets.dart';
import 'package:trainer_dashboard/view/home_screen.dart';
import 'package:trainer_dashboard/view/jobs_screen.dart';
import 'package:trainer_dashboard/view/settings_screen.dart';
import 'package:trainer_dashboard/viewModel/navigation_bar_provider.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  final List<Widget> screens = const [
    HomeScreen(),
    CalendarScreen(),
    JobsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final navProvider = Provider.of<NavigationBarProvider>(context);

    return Scaffold(
      body: screens[navProvider.selectedIndex],
      floatingActionButton: SizedBox(
        width: 50,
        height: 50,
        child: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, '/dummyScreen'),
          child: Image(image: AssetImage(Assets.plusIcon)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => navProvider.setIndex(0),
              icon: Image(image: AssetImage(Assets.homeIcon)),
            ),
            IconButton(
              onPressed: () => navProvider.setIndex(1),
              icon: Image(image: AssetImage(Assets.calendarIcon)),
            ),
            IconButton(
              onPressed: () => navProvider.setIndex(2),
              icon: Image(image: AssetImage(Assets.jobsIcon)),
            ),
            IconButton(
              onPressed: () => navProvider.setIndex(3),
              icon: Image(image: AssetImage(Assets.settingsIcon)),
            ),
          ],
        ),
      ),
    );
  }
}
