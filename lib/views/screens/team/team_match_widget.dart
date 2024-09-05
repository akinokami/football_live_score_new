import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../../models/team_model.dart';
import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';
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
                                  "${matches?[index].cName ?? ''} ${matches?[index].stName ?? ''} ${matches?[index].season ?? ''}",
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
                              text: (matches?[index].teams ?? []).isNotEmpty
                                  ? (matches?[index].teams?[0].name ?? '')
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
                                    text: (matches?[index].score ?? []).isEmpty
                                        ? "${matches?[index].score?[0] ?? 0}"
                                        : '0',
                                  ),
                                  const CustomText(
                                    text: ' - ',
                                  ),
                                  CustomText(
                                    text: (matches?[index].score ?? []).length >
                                            1
                                        ? "${matches?[index].score?[1] ?? 0}"
                                        : '0',
                                  )
                                ],
                              ),
                              CustomText(text: 'Finished')
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
