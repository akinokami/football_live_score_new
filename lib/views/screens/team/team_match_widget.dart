import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../../models/team_model.dart';
import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../../utils/function.dart';
import '../../widgets/custom_card.dart';

class TeamMatchWidget extends StatelessWidget {
  final List<Fixtures>? matches;
  const TeamMatchWidget({super.key, this.matches});

  @override
  Widget build(BuildContext context) {
    return (matches ?? []).isEmpty
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: matches?.length,
            itemBuilder: (context, index) {
              return CustomCard(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      fontWeight: FontWeight.w500,
                      text:
                          "${matches?[index].cName ?? ''} ${matches?[index].stName ?? ''}",
                      isEllip: true,
                    ),
                    kSizedBoxH5,
                    Divider(height: 1.h, color: grey.withOpacity(0.3)),
                    kSizedBoxH5,
                    Padding(
                      padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 1.sw * 0.25,
                            child: CustomText(
                              text: (matches?[index].teams ?? []).isNotEmpty
                                  ? (matches?[index].teams?[0].name ?? '')
                                  : '',
                              textAlign: TextAlign.right,
                              maxLines: 2,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: greyColor.withOpacity(0.7),
                            ),
                          ),
                          Icon(
                            Icons.sports_soccer,
                            size: 18.sp,
                            color: secondaryColor,
                          ),
                          Column(
                            children: [
                              Visibility(
                                visible: matches?[index].status == 2 ||
                                    matches?[index].status == 3 ||
                                    matches?[index].status == 6 ||
                                    matches?[index].status == 10 ||
                                    matches?[index].status == 11 ||
                                    matches?[index].status == 17,
                                child: CustomText(
                                    fontWeight: FontWeight.w500,
                                    text:
                                        '${matches?[index].score?[0] ?? ''} - ${matches?[index].score?[1] ?? ''}'),
                              ),
                              Visibility(
                                visible: matches?[index].status == 2 ||
                                    matches?[index].status == 3 ||
                                    matches?[index].status == 10,
                                child: Container(
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius:
                                          BorderRadius.circular(100.r)),
                                  padding: EdgeInsets.all(3.w),
                                  alignment: Alignment.center,
                                  child: CustomText(
                                      color: Colors.white,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                      text: (matches?[index].statusTxt ?? '')),
                                ),
                              ),
                              Visibility(
                                visible: matches?[index].status != 2 &&
                                    matches?[index].status != 3 &&
                                    matches?[index].status != 10,
                                child: CustomText(
                                    color: greyColor.withOpacity(0.5),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    text: matches?[index].status == 6
                                        ? 'FT'
                                        : matches?[index].status == 17
                                            ? 'AB'
                                            : matches?[index].status == 1
                                                ? getTime(
                                                    "${matches?[index].start ?? ''}")
                                                : (matches?[index].statusTxt ??
                                                    '')),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.sports_soccer,
                            size: 18.sp,
                            color: secondaryColor,
                          ),
                          SizedBox(
                            width: 1.sw * 0.25,
                            child: CustomText(
                              text: (matches?[index].teams ?? []).length > 1
                                  ? (matches?[index].teams?[1].name ?? '')
                                  : '',
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: greyColor.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
