import 'package:flutter/material.dart';

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
        Text(
          earnings == 0 ? '' : '$earnings₹',
          style: const TextStyle(fontSize: 12),
        ),
        Container(
          width: 8,
          height: height,
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
