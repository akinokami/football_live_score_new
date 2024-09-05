import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';

class TeamOverallWidget extends StatelessWidget {
  const TeamOverallWidget({super.key});

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
            ),
          ],
        ))
      ],
    );
  }
}
