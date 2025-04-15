import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainer_dashboard/view/core/style/color_manager.dart';
import 'package:trainer_dashboard/viewModel/theme_provider.dart';

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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      width: 200,
      margin: const EdgeInsets.only(bottom: 12, right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: ColorManager.lightGrey),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(
              1,
              6,
            ), // diagonal shadow: slightly right and down
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
                style: const TextStyle(fontSize: 12),
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
                color:
                    themeProvider.isDarkMode
                        ? ColorManager.darkCyan.withValues(alpha: 0.75)
                        : ColorManager.lightCyan.withValues(alpha: 0.75),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  '123.76₹',
                  style: TextStyle(
                    fontSize: 12,
                    color:
                        themeProvider.isDarkMode
                            ? ColorManager.lightCyan
                            : ColorManager.darkCyan,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const Align(
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
