import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/controller/live_controller.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:get/get.dart';
import '../../../utils/color_const.dart';
import '../../../utils/function.dart';
import '../../widgets/custom_card.dart';
import '../../widgets/custom_text.dart';
import '../match/match_detail_screen.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final liveController = Get.put(LiveController());
    // final matchDetailController = Get.put(MatchDetailController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          text: 'live'.tr,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Obx(
        () => liveController.isLoading.value
            ? const Center(
                child: CustomLoading(),
              )
            : liveController.matches.isEmpty
                ? Center(
                    child: CustomText(text: 'no_live'.tr),
                  )
                : Padding(
                    padding: EdgeInsets.all(5.w),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: liveController.matches.length,
                              itemBuilder: (context, index) {
                                return CustomCard(
                                  widget: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        fontWeight: FontWeight.w500,
                                        text:
                                            "${liveController.matches[index].cName ?? ''} ${liveController.matches[index].stName ?? ''}",
                                        isEllip: true,
                                      ),
                                      kSizedBoxH5,
                                      Divider(
                                          height: 1.h,
                                          color: grey.withOpacity(0.3)),
                                      kSizedBoxH5,
                                      ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: liveController
                                              .matches[index].matches?.length,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index1) {
                                            return InkWell(
                                              onTap: () {
                                                Get.to(
                                                    () =>
                                                        const MatchDetailScreen(),
                                                    arguments: {
                                                      'matchId': liveController
                                                              .matches[index]
                                                              .matches?[index1]
                                                              .id ??
                                                          '',
                                                      'status': (liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ??
                                                                  0) ==
                                                              6
                                                          ? 'FT'
                                                          : (liveController
                                                                          .matches[
                                                                              index]
                                                                          .matches?[
                                                                              index1]
                                                                          .status ??
                                                                      0) ==
                                                                  17
                                                              ? 'Abandoned'
                                                              : (liveController
                                                                              .matches[
                                                                                  index]
                                                                              .matches?[
                                                                                  index1]
                                                                              .status ??
                                                                          0) ==
                                                                      1
                                                                  ? getTime(
                                                                      "${liveController.matches[index].matches?[index1].start ?? ''}")
                                                                  : (liveController
                                                                          .matches[
                                                                              index]
                                                                          .matches?[
                                                                              index1]
                                                                          .statusText ??
                                                                      ''),
                                                    });
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5.h, bottom: 5.h),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: 1.sw * 0.25,
                                                      child: CustomText(
                                                        text: (liveController
                                                                        .matches[
                                                                            index]
                                                                        .matches?[
                                                                            index1]
                                                                        .teams ??
                                                                    [])
                                                                .isNotEmpty
                                                            ? (liveController
                                                                    .matches[
                                                                        index]
                                                                    .matches?[
                                                                        index1]
                                                                    .teams?[0]
                                                                    .name ??
                                                                '')
                                                            : '',
                                                        textAlign:
                                                            TextAlign.right,
                                                        maxLines: 2,
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: greyColor
                                                            .withOpacity(0.7),
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
                                                          visible: liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  2 ||
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  3 ||
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  6 ||
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  10 ||
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  11 ||
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  17,
                                                          child: CustomText(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              text:
                                                                  '${liveController.matches[index].matches?[index1].ftScore?[0] ?? ''} - ${liveController.matches[index].matches?[index1].ftScore?[1] ?? ''}'),
                                                        ),
                                                        Visibility(
                                                          visible: liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  2 ||
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  3 ||
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ==
                                                                  10,
                                                          child: Container(
                                                            width: 20.w,
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    secondaryColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100.r)),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    3.w),
                                                            alignment: Alignment
                                                                .center,
                                                            child: CustomText(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              text: liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .statusText ??
                                                                  '',
                                                            ),
                                                          ),
                                                        ),
                                                        Visibility(
                                                          visible: liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status !=
                                                                  2 &&
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status !=
                                                                  3 &&
                                                              liveController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status !=
                                                                  10,
                                                          child: CustomText(
                                                            color: greyColor
                                                                .withOpacity(
                                                                    0.5),
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            text: liveController
                                                                        .matches[
                                                                            index]
                                                                        .matches?[
                                                                            index1]
                                                                        .status ==
                                                                    6
                                                                ? 'FT'
                                                                : liveController
                                                                            .matches[
                                                                                index]
                                                                            .matches?[
                                                                                index1]
                                                                            .status ==
                                                                        17
                                                                    ? 'AB'
                                                                    : liveController.matches[index].matches?[index1].status ==
                                                                            1
                                                                        ? getTime(
                                                                            "${liveController.matches[index].matches?[index1].start ?? ''}")
                                                                        : (liveController.matches[index].matches?[index1].statusText ??
                                                                            ''),
                                                          ),
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
                                                        text: (liveController
                                                                            .matches[
                                                                                index]
                                                                            .matches?[
                                                                                index1]
                                                                            .teams ??
                                                                        [])
                                                                    .length >
                                                                1
                                                            ? (liveController
                                                                    .matches[
                                                                        index]
                                                                    .matches?[
                                                                        index1]
                                                                    .teams?[1]
                                                                    .name ??
                                                                '')
                                                            : '',
                                                        textAlign:
                                                            TextAlign.left,
                                                        maxLines: 2,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10.sp,
                                                        color: greyColor
                                                            .withOpacity(0.7),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          })
                                    ],
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
