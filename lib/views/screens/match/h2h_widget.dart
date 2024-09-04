import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';

import '../../widgets/custom_text.dart';

class H2HWidget extends StatelessWidget {
  const H2HWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomCard(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: CustomText(
            text: "4",
            color: Colors.white,
          ),
        ),
        CustomText(text: "Wins", color: greyColor),
      ],
    ),
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: CustomText(
            text: "0",
            color: Colors.white,
          ),
        ),
        CustomText(text: "Draws", color: greyColor),
      ],
    ),
    Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: CustomText(
            text: "6",
            color: Colors.white,
          ),
        ),
        CustomText(text: "Wins", color: greyColor),
      ],
    )
  ],
),
kSizedBoxH30,
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Sat , Aug 2024",color: greyColor,),
                      kSizedBoxH5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              CustomText(text: "TeamA"),
                              Icon(Icons.sports_soccer),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)),
                              child: CustomText(text: "2 - 1")),
                          Row(
                            children: [

                              Icon(Icons.sports_soccer),
                              CustomText(text: "TeamB"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  kSizedBoxH15,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Sat , Aug 2024",color: greyColor,),
                      kSizedBoxH5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              CustomText(text: "TeamA"),
                              Icon(Icons.sports_soccer),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5)),
                              child: CustomText(text: "1 - 0")),
                          Row(
                            children: [

                              Icon(Icons.sports_soccer),
                              CustomText(text: "TeamB"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  kSizedBoxH15,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Sat , Aug 2024",color: greyColor,),
                      kSizedBoxH5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              CustomText(text: "TeamB"),
                              Icon(Icons.sports_soccer),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(5)),
                              child: CustomText(text: "1 - 0")),
                          Row(
                            children: [

                              Icon(Icons.sports_soccer),
                              CustomText(text: "TeamA"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  kSizedBoxH15,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Sat , Aug 2024",color: greyColor,),
                      kSizedBoxH5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              CustomText(text: "TeamA"),
                              Icon(Icons.sports_soccer),
                            ],
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                              child: CustomText(text: "1 - 1")),
                          Row(
                            children: [

                              Icon(Icons.sports_soccer),
                              CustomText(text: "TeamB"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),


            ],
          ))
        ],
      ),
    );
  }
}
