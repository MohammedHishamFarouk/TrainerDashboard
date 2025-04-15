import 'package:flutter/material.dart';
import 'package:trainer_dashboard/view/core/components/earnings_graph.dart';
import 'package:trainer_dashboard/view/core/components/slots.dart';
import 'package:trainer_dashboard/view/core/constants/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 16,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(Assets.noProfilePic),
                    radius: 28,
                  ),
                  Image(image: AssetImage(Assets.verifiedIcon)),
                ],
              ),
              Text(
                'Welcome,Aryush',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image(image: AssetImage(Assets.bellIcon)),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Divider(),
            ),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Slots(header: 'Upcoming'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
