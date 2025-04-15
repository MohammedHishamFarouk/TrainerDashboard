import 'package:flutter/material.dart';
import 'package:trainer_dashboard/core/components/slots.dart';

import 'core/components/earnings_graph.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
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
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          EarningsGraph(),
          Padding(padding: const EdgeInsets.only(top: 16.0), child: Divider()),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bookings',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
