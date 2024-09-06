import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';

import '../../../utils/color_const.dart';

class StandingWidget extends StatelessWidget {
  const StandingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomCard(
              widget: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 1.sw * 0.50, child: CustomText(text: 'Team')),
                  CustomText(text: 'P'),
                  CustomText(text: '='),
                  CustomText(text: 'PTS'),
                ],
              ),
              kSizedBoxH5,
              Divider(
                height: 1.h,
                color: grey,
              ),
              kSizedBoxH5,
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 1.sw * 0.50,
                            child: CustomText(text: 'Team')),
                        CustomText(text: 'P'),
                        CustomText(text: '='),
                        CustomText(text: 'PTS'),
                      ],
                    );
                  },
                ),
              )
            ],
          )),
        )
      ],
    );
  }
}
