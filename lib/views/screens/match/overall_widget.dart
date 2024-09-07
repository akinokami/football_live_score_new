import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/models/match_detail_model.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../widgets/custom_text.dart';

class OverallWidget extends StatelessWidget {
  final String date;
  final String name;
  final MatchDetailModel? matchDetailModel;
  const OverallWidget(
      {super.key,
      required this.date,
      required this.name,
      this.matchDetailModel});

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
            ),
          ),
          Visibility(
            visible: (matchDetailModel?.stats ?? []).length > 1,
            child: CustomCard(
                widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'possession'.tr),
                kSizedBoxH10,
                LinearPercentIndicator(
                  animation: true,
                  lineHeight: 17.h,
                  animationDuration: 100,
                  percent: (matchDetailModel?.stats?[0].possession ?? 0) / 100,
                  center: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: CustomText(
                          text: "${matchDetailModel?.stats?[0].possession}%",
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: CustomText(
                          text: "${matchDetailModel?.stats?[1].possession}%",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                  backgroundColor: Colors.cyan,
                ),
              ],
            )),
          ),
          Visibility(
            visible: (matchDetailModel?.stats ?? []).length > 1,
            child: CustomCard(
                widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'attack'.tr),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "${matchDetailModel?.stats?[0].shotsOn ?? 0}"),
                    CustomText(
                      text: 'shots_on_target'.tr,
                    ),
                    CustomText(
                        text: "${matchDetailModel?.stats?[1].shotsOn ?? 0}"),
                  ],
                ),
                kSizedBoxH5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "${matchDetailModel?.stats?[0].shotsOff ?? 0}"),
                    CustomText(
                      text: 'shots_off_target'.tr,
                    ),
                    CustomText(
                        text: "${matchDetailModel?.stats?[1].shotsOff ?? 0}"),
                  ],
                ),
                kSizedBoxH5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "${matchDetailModel?.stats?[0].corners ?? 0}"),
                    CustomText(
                      text: 'corner_kicks'.tr,
                    ),
                    CustomText(
                        text: "${matchDetailModel?.stats?[1].corners ?? 0}"),
                  ],
                ),
                kSizedBoxH5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "${matchDetailModel?.stats?[0].offsides ?? 0}"),
                    CustomText(
                      text: 'offsides'.tr,
                    ),
                    CustomText(
                        text: "${matchDetailModel?.stats?[1].offsides ?? 0}"),
                  ],
                ),
              ],
            )),
          ),
          Visibility(
            visible: (matchDetailModel?.stats ?? []).length > 1,
            child: CustomCard(
                widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'defense'.tr),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "${matchDetailModel?.stats?[0].fouls ?? 0}"),
                    CustomText(
                      text: 'fouls'.tr,
                    ),
                    CustomText(
                        text: "${matchDetailModel?.stats?[1].fouls ?? 0}"),
                  ],
                ),
                kSizedBoxH5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "${matchDetailModel?.stats?[0].throwIn ?? 0}"),
                    CustomText(
                      text: 'throw_ins'.tr,
                    ),
                    CustomText(
                        text: "${matchDetailModel?.stats?[1].throwIn ?? 0}"),
                  ],
                ),
              ],
            )),
          ),
          Visibility(
            visible: (matchDetailModel?.stats ?? []).length > 1,
            child: CustomCard(
                widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'bookings'.tr),
                kSizedBoxH10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: "${matchDetailModel?.stats?[0].yellow ?? 0}"),
                    CustomText(
                      text: 'yellow_cards'.tr,
                    ),
                    CustomText(
                        text: "${matchDetailModel?.stats?[1].yellow ?? 0}"),
                  ],
                ),
              ],
            )),
          ),
        ],
      ),
    );
  }
}
