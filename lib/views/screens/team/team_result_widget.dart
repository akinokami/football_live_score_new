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
              return GestureDetector(
                onTap: () {
                  // Get.to(() => const TeamScreen());
                },
                child: CustomCard(
                  widget: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.sports_soccer,
                            size: 18.sp,
                            color: secondaryColor,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: CustomText(
                              text:
                                  "${results?[index].cName ?? ''} ${results?[index].stName ?? ''} ${results?[index].season ?? ''}",
                              isEllip: true,
                            ),
                          )
                        ],
                      ),
                      kSizedBoxH5,
                      Divider(height: 1.h, color: grey),
                      kSizedBoxH10,
                      Row(
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
                            ),
                          ),
                          Icon(
                            Icons.sports_soccer,
                            size: 18.sp,
                            color: secondaryColor,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  CustomText(
                                    text: (results?[index].score ?? []).isEmpty
                                        ? "${results?[index].score?[0] ?? 0}"
                                        : '0',
                                  ),
                                  const CustomText(
                                    text: ' - ',
                                  ),
                                  CustomText(
                                    text: (results?[index].score ?? []).length >
                                            1
                                        ? "${results?[index].score?[1] ?? 0}"
                                        : '0',
                                  )
                                ],
                              ),
                              const CustomText(text: 'FT')
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
                            ),
                          ),
                        ],
                      ),
                      kSizedBoxH10,
                    ],
                  ),
                ),
              );
            });
  }
}
