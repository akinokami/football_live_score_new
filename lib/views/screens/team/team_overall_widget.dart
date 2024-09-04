import 'package:flutter/material.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';

class OverallWidget extends StatelessWidget {
  const OverallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
            widget: Column(
          children: [
            CustomText(text: 'Next Match'),
            Row(
              children: [
                CustomText(text: 'Next Match'),
                CustomText(text: 'Next Match'),
              ],
            )
          ],
        ))
      ],
    );
  }
}
