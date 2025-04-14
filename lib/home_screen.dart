import 'package:flutter/material.dart';
import 'package:trainer_dashboard/color_manager.dart';
import 'package:trainer_dashboard/components/slots.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 16,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/no_profile_pic.jpg'),
                radius: 28,
              ),
              Text(
                'Welcome,Aryush',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'InriaSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        leadingWidth: 250,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Earnings',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'InriaSans',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Container(
                width: 361,
                height: 155,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: ColorManager.lightGrey),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 4), // pushes shadow to bottom-right
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Total: 491.56₹',
                        style: TextStyle(
                          fontFamily: 'InriaSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 8,
                              height: 90,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Sun.',
                              style: TextStyle(fontFamily: 'InriaSans'),
                            ),
                            Text(
                              'Mon.',
                              style: TextStyle(fontFamily: 'InriaSans'),
                            ),
                            Text(
                              'Tue.',
                              style: TextStyle(fontFamily: 'InriaSans'),
                            ),
                            Text(
                              'Wed.',
                              style: TextStyle(fontFamily: 'InriaSans'),
                            ),
                            Text(
                              'Thu.',
                              style: TextStyle(fontFamily: 'InriaSans'),
                            ),
                            Text(
                              'Fri.',
                              style: TextStyle(fontFamily: 'InriaSans'),
                            ),
                            Text(
                              'Sat.',
                              style: TextStyle(fontFamily: 'InriaSans'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.only(top: 16.0), child: Divider()),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bookings',
                  style: TextStyle(
                    fontFamily: 'InriaSans',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Slots(header: 'Today'),
                Slots(header: 'Upcoming'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
