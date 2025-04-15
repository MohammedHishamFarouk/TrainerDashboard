import 'package:flutter/material.dart';
import 'package:trainer_dashboard/view/core/components/slot_card.dart';
import 'package:trainer_dashboard/view/core/constants/assets.dart';

class Slots extends StatelessWidget {
  const Slots({super.key, required this.header});

  final String header;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(
          header,
          style: const TextStyle(fontFamily: 'InriaSans', fontSize: 16),
        ),
        SizedBox(
          height: 162,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SlotCard(
                icon: index % 2 == 0 ? Assets.dumbbellIcon : Assets.runningIcon,
                traineeProfile:
                    index % 2 == 0 ? Assets.profile1 : Assets.profile2,
                date: header == "Upcoming" ? "26 April" : "",
              );
            },
            itemCount: header == "Upcoming" ? 1 : 4,
          ),
        ),
      ],
    );
  }
}
