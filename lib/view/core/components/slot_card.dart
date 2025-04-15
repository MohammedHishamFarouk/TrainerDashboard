import 'package:flutter/material.dart';
import 'package:trainer_dashboard/view/core/style/color_manager.dart';

class SlotCard extends StatelessWidget {
  const SlotCard({
    super.key,
    required this.icon,
    required this.traineeProfile,
    required this.date,
  });

  final String icon;
  final String traineeProfile;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(bottom: 12, right: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: ColorManager.lightGrey),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 0,
            blurRadius: 4,
            offset: Offset(1, 6), // diagonal shadow: slightly right and down
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image(image: AssetImage(icon)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(traineeProfile),
                radius: 28,
              ),
              Text(
                'Lorem ipsum\n$date',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 60,
              height: 16,
              decoration: BoxDecoration(
                color: ColorManager.lightCyan.withValues(alpha: 0.75),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  '123.76₹',
                  style: TextStyle(fontSize: 12, color: ColorManager.darkCyan),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'from: 8 pm \n to: 10 pm',
              style: TextStyle(fontSize: 12, color: ColorManager.grey),
            ),
          ),
        ],
      ),
    );
  }
}
