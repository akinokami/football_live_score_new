import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';

class SquardWidget extends StatelessWidget {
  const SquardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: ((context, index) {
                return CustomCard(
                    widget: Column(
                  children: [
                    CustomText(text: 'title'),
                    Row(
                      children: [
                        Icon(
                          Icons.sports_soccer,
                          size: 30.sp,
                        ),
                        Column(
                          children: [
                            CustomText(text: 'aaa'),
                            CustomText(text: 'aaa'),
                          ],
                        )
                      ],
                    )
                  ],
                ));
              })),
        )
      ],
    );
  }
}
