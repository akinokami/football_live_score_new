import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../../models/team_model.dart';
import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
import '../../widgets/custom_card.dart';

class TeamResultWidget extends StatelessWidget {
  final List<Results>? results;
  const TeamResultWidget({super.key, this.results});

  @override
  Widget build(BuildContext context) {
    return (results ?? []).isEmpty
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: results?.length,
            itemBuilder: (context, index) {
              return CustomCard(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      fontWeight: FontWeight.w500,
                      text:
                          "${results?[index].cName ?? ''} ${results?[index].stName ?? ''}",
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
                              text: (results?[index].teams ?? []).isNotEmpty
                                  ? (results?[index].teams?[0].name ?? '')
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
                              CustomText(
                                  fontWeight: FontWeight.w500,
                                  text:
                                      '${results?[index].score?[0] ?? ''} - ${results?[index].score?[1] ?? ''}'),
                              CustomText(
                                color: greyColor.withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                                text: 'FT',
                              )
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
                              text: (results?[index].teams ?? []).length > 1
                                  ? (results?[index].teams?[1].name ?? '')
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
            });
  }
}
