import 'package:flutter/material.dart';
import 'package:trainer_dashboard/dummy_values.dart';
import 'package:trainer_dashboard/view/core/helpers/functions.dart';
import 'package:trainer_dashboard/view/core/style/color_manager.dart';

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
                  'Total: ${roundHundredths(DummyValues.totalEarnings)}₹',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: getDailyStats(),
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
