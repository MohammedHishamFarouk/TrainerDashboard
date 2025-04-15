import 'package:flutter/material.dart';
import 'package:trainer_dashboard/core/helpers/functions.dart';
import 'package:trainer_dashboard/core/style/color_manager.dart';

class EarningsGraph extends StatelessWidget {
  const EarningsGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            color: Theme.of(context).primaryColor,
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Total: 491.56₹',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      DailyStat(day: "Sun.", height: 80, earnings: 54.563),
                      DailyStat(day: "Mon.", height: 50, earnings: 54.563),
                      DailyStat(day: "Tue.", height: 32, earnings: 54.563),
                      DailyStat(
                        day: "Wed.",
                        height: 64,
                        earnings: roundHundredths(54),
                      ),
                      DailyStat(day: "Thu.", height: 40, earnings: 54.563),
                      DailyStat(day: "Fri.", height: 8, earnings: 54.563),
                      DailyStat(day: "Sat.", height: 5, earnings: 54.563),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DailyStat extends StatelessWidget {
  const DailyStat({
    super.key,
    required this.day,
    required this.height,
    this.earnings = 0.00,
  });

  final String day;
  final double height;
  final double earnings;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(height < 8 ? '' : '$earnings₹', style: TextStyle(fontSize: 12)),
        Container(
          width: 8,
          height: height < 8 ? 0 : height,
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Text(day),
      ],
    );
  }
}
