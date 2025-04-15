import 'package:flutter/material.dart';
import 'package:trainer_dashboard/constants/assets.dart';
import 'package:trainer_dashboard/home_screen.dart';

class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      floatingActionButton: SizedBox(
        width: 50,
        height: 50,
        child: FloatingActionButton(
          onPressed: () {},
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
              onPressed: () {},
              icon: Image(image: AssetImage(Assets.homeIcon)),
            ),
            IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage(Assets.calendarIcon)),
            ),
            IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage(Assets.jobsIcon)),
            ),
            IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage(Assets.settingsIcon)),
            ),
          ],
        ),
      ),
    );
  }
}
