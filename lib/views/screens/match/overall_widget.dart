import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';

class OverallWidget extends StatelessWidget {
  const OverallWidget({super.key, required this.date, required this.name});
  final String date;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomCard(
              widget: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 18.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(text: date)
                ],
              ),
              kSizedBoxH5,
              Row(
                children: [
                  Icon(
                    Icons.sports_soccer,
                    size: 18.sp,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  CustomText(text: name)
                ],
              )
            ],
          )),
          kSizedBoxH5,
          CustomCard(
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: CustomText(
                    text: "Match Statistics",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  )),
              kSizedBoxH10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "60%"),
                  CustomText(
                    text: "Ball Possession",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "40%"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "15"),
                  CustomText(
                    text: "Shots",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "7"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "313"),
                  CustomText(
                    text: "Acc. passes",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "576"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "2"),
                  CustomText(
                    text: "Big Chances",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "1"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "10"),
                  CustomText(
                    text: "Corners",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "6"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "3"),
                  CustomText(
                    text: "Fouls",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "2"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "4"),
                  CustomText(
                    text: "Yellow Cards",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "2"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "1"),
                  CustomText(
                    text: "Red Cards",
                    fontWeight: FontWeight.bold,
                    color: greyColor.withOpacity(0.5),
                  ),
                  CustomText(text: "0"),
                ],
              ),

            ],
          )),
          kSizedBoxH5,
          CustomCard(
              widget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                  opacity: 0.5,
                  child: CustomText(
                    text: "Last 5 Matches",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  )),
              kSizedBoxH10,
              CustomText(
                text: "TeamA",
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
              kSizedBoxH30,
              CustomText(
                text: "TeamB",
                fontWeight: FontWeight.bold,
              ),
              Divider(),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
                      CustomText(
                        text: "Sat , Aug 2024",
                        color: greyColor,
                      ),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
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
              )
            ],
          ))
        ],
      ),
    );
  }
}
