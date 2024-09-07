import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/models/standing_model.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../../utils/color_const.dart';

class StandingWidget extends StatelessWidget {
  final Tables? tables;
  final String? teamAId;
  final String? teamBId;
  const StandingWidget({super.key, this.tables, this.teamAId, this.teamBId});

  @override
  Widget build(BuildContext context) {
    return (tables?.teams ?? []).isEmpty
        ? Center(child: CustomText(text: 'no_data'.tr))
        : Column(
            children: [
              Expanded(
                child: CustomCard(
                    widget: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(text: '#'),
                        SizedBox(
                          width: 1.sw * 0.50,
                          child: CustomText(text: 'team'.tr),
                        ),
                        SizedBox(
                          width: 1.sw * 0.07,
                          child: const CustomText(
                            text: 'P',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                            width: 1.sw * 0.07,
                            child: const CustomText(
                              text: 'GD',
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 1.sw * 0.07,
                            child: const CustomText(
                              text: 'PTS',
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                    kSizedBoxH5,
                    Divider(height: 1.h, color: grey.withOpacity(0.3)),
                    kSizedBoxH5,
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: tables?.teams?.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text:
                                      "${tables?.teams?[index].ranking ?? ''}",
                                  color:
                                      teamAId == tables?.teams?[index].teamId ||
                                              teamBId ==
                                                  tables?.teams?[index].teamId
                                          ? secondaryColor
                                          : Colors.black,
                                  fontWeight:
                                      teamAId == tables?.teams?[index].teamId ||
                                              teamBId ==
                                                  tables?.teams?[index].teamId
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                ),
                                SizedBox(
                                  width: 1.sw * 0.50,
                                  child: CustomText(
                                    text: tables?.teams?[index].teamName ?? '',
                                    color: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? secondaryColor
                                        : Colors.black,
                                    fontWeight: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                                SizedBox(
                                  width: 1.sw * 0.07,
                                  child: CustomText(
                                    text: tables?.teams?[index].played ?? '',
                                    textAlign: TextAlign.center,
                                    color: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? secondaryColor
                                        : Colors.black,
                                    fontWeight: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                                SizedBox(
                                  width: 1.sw * 0.07,
                                  child: CustomText(
                                    text:
                                        tables?.teams?[index].goalDifference ??
                                            '',
                                    textAlign: TextAlign.center,
                                    color: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? secondaryColor
                                        : Colors.black,
                                    fontWeight: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                                SizedBox(
                                  width: 1.sw * 0.07,
                                  child: CustomText(
                                    text: tables?.teams?[index].points ?? '',
                                    textAlign: TextAlign.center,
                                    color: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? secondaryColor
                                        : Colors.black,
                                    fontWeight: teamAId ==
                                                tables?.teams?[index].teamId ||
                                            teamBId ==
                                                tables?.teams?[index].teamId
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
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
