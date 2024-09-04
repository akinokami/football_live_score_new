import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/controller/match_controller.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/screens/team/team_screen.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:get/get.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_text.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matchController = Get.put(MatchController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'matches'.tr,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Obx(
        () => matchController.isLoading.value
            ? const Center(
                child: CustomLoading(),
              )
            : Container(
                color: greyTicket,
                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount:
                                matchController.match.value.matches?.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.to(() => const TeamScreen());
                                },
                                child: Container(
                                  color: greyTicket,
                                  child: Container(
                                    margin: matchController.match.value
                                                .matches?[index].type ==
                                            3
                                        ? EdgeInsets.only(top: 5.h)
                                        : const EdgeInsets.all(0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: matchController
                                                    .match
                                                    .value
                                                    .matches?[index]
                                                    .type ==
                                                3
                                            ? BorderRadius.only(
                                                topLeft: Radius.circular(5.r),
                                                topRight: Radius.circular(5.r))
                                            : ((matchController.match.value.matches ??
                                                            [])
                                                        .length >
                                                    index + 1)
                                                ? (matchController.match.value
                                                                    .matches ??
                                                                [])[index + 1]
                                                            .type ==
                                                        3
                                                    ? BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                5.r),
                                                        bottomRight:
                                                            Radius.circular(5.r))
                                                    : BorderRadius.circular(0.w)
                                                : BorderRadius.circular(0.w)),
                                    child: matchController.match.value
                                                .matches?[index].type ==
                                            3
                                        ? Column(
                                            children: [
                                              kSizedBoxH5,
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 5.w,
                                                    top: 3.h,
                                                    bottom: 3.h),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.sports_soccer,
                                                      size: 18.sp,
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    CustomText(
                                                        text:
                                                            "${matchController.match.value.matches?[index].tournament?.country?.name ?? ''} - ${matchController.match.value.matches?[index].tournament?.league?.name ?? ''}")
                                                  ],
                                                ),
                                              ),
                                              kSizedBoxH5,
                                              Divider(height: 1.h, color: grey),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              kSizedBoxH10,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: 1.sw * 0.25,
                                                    child: CustomText(
                                                      text: matchController
                                                              .match
                                                              .value
                                                              .matches?[index]
                                                              .homeTeam
                                                              ?.name ??
                                                          '',
                                                      textAlign:
                                                          TextAlign.right,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.sports_soccer,
                                                    size: 18.sp,
                                                  ),
                                                  Column(
                                                    children: [
                                                      CustomText(text: '2 - 1'),
                                                      CustomText(
                                                          text: 'Finished')
                                                    ],
                                                  ),
                                                  Icon(
                                                    Icons.sports_soccer,
                                                    size: 18.sp,
                                                  ),
                                                  SizedBox(
                                                    width: 1.sw * 0.25,
                                                    child: CustomText(
                                                      text: matchController
                                                              .match
                                                              .value
                                                              .matches?[index]
                                                              .awayTeam
                                                              ?.name ??
                                                          '',
                                                      textAlign: TextAlign.left,
                                                      maxLines: 2,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              kSizedBoxH10,
                                              Visibility(
                                                  visible: ((matchController
                                                                      .match
                                                                      .value
                                                                      .matches ??
                                                                  [])
                                                              .length >
                                                          index + 1)
                                                      ? (matchController.match.value
                                                                              .matches ??
                                                                          [])[
                                                                      index + 1]
                                                                  .type !=
                                                              3
                                                          ? true
                                                          : false
                                                      : false,
                                                  child: Divider(
                                                      height: 1.h,
                                                      color: grey)),
                                            ],
                                          ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
