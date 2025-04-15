import 'package:flutter/material.dart';
import 'package:trainer_dashboard/view/core/style/color_manager.dart';

class SlotCard extends StatelessWidget {
  const SlotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(bottom: 12, right: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: ColorManager.grey),
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
    );
  }
}
