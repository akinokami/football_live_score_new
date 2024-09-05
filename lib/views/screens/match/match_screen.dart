import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/controller/match_controller.dart';
import 'package:football_live_score/controller/match_detail_controller.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/screens/match/match_detail_screen.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:get/get.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_card.dart';
import '../../widgets/custom_text.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matchController = Get.put(MatchController());
    final matchDetailController = Get.put(MatchDetailController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: secondaryColor,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'matches'.tr,
          fontSize: 15.sp,
          color: whiteColor,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Obx(
        () => matchController.isLoading.value
            ? const Center(
                child: CustomLoading(),
              )
            : Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: matchController.matches.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                matchDetailController
                                    .getMatchesDetail('1-2874806');
                                Get.to(() => MatchDetailScreen());
                              },
                              child: CustomCard(
                                widget: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.sports_soccer,
                                          size: 18.sp,
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Expanded(
                                          child: CustomText(
                                            text:
                                                "${matchController.matches[index].cName ?? ''} ${matchController.matches[index].stName ?? ''}",
                                            isEllip: true,
                                          ),
                                        )
                                      ],
                                    ),
                                    kSizedBoxH5,
                                    Divider(height: 1.h, color: grey),
                                    kSizedBoxH10,
                                    ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: matchController
                                            .matches[index].matches?.length,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index1) {
                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 1.sw * 0.20,
                                                child:
                                                    CustomText(text: 'Team A'),
                                              ),
                                              Icon(
                                                Icons.sports_soccer,
                                                size: 18.sp,
                                              ),
                                              Column(
                                                children: [
                                                  CustomText(text: '2 - 1'),
                                                  CustomText(text: 'Finished')
                                                ],
                                              ),
                                              Icon(
                                                Icons.sports_soccer,
                                                size: 18.sp,
                                              ),
                                              SizedBox(
                                                width: 1.sw * 0.20,
                                                child:
                                                    CustomText(text: 'Team B'),
                                              ),
                                            ],
                                          );
                                        })
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
