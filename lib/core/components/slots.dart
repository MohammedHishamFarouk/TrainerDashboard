import 'package:flutter/material.dart';
import 'package:trainer_dashboard/core/components/slot_card.dart';

class Slots extends StatelessWidget {
  const Slots({super.key, required this.header});

  final String header;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Text(header, style: TextStyle(fontFamily: 'InriaSans', fontSize: 16)),
        SizedBox(
          height: 162,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SlotCard();
            },
            itemCount: 3,
          ),
        ),
      ],
    );
  }
}
