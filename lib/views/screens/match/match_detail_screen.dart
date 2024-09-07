import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/utils/function.dart';
import 'package:football_live_score/views/screens/match/h2h_widget.dart';
import 'package:football_live_score/views/screens/match/standing_widget.dart';
import 'package:football_live_score/views/screens/team/team_screen.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:get/get.dart';

import '../../../controller/match_detail_controller.dart';
import '../../widgets/custom_text.dart';
import 'overall_widget.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matchDetailController = Get.put(MatchDetailController());

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: secondaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          title: CustomText(
            text: 'match_detail'.tr,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        body: Obx(() {
          return Center(
            child: matchDetailController.isLoading.value
                ? const CustomLoading()
                : matchDetailController.matchDetailData.value.id == null
                    ? CustomText(text: 'no_data'.tr)
                    : Column(
                        children: [
                          Container(
                            color: secondaryColor,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.to(() => const TeamScreen(),
                                              arguments: {
                                                'teamId': (matchDetailController
                                                                .matchDetailData
                                                                .value
                                                                .teams ??
                                                            [])
                                                        .isNotEmpty
                                                    ? (matchDetailController
                                                            .matchDetailData
                                                            .value
                                                            .teams?[0]
                                                            .id ??
                                                        '0')
                                                    : '0'
                                              });
                                        },
                                        child: SizedBox(
                                          width: 1.sw * 0.25,
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.sports_soccer,
                                                size: 40.sp,
                                                color: Colors.white,
                                              ),
                                              CustomText(
                                                maxLines: 2,
                                                textAlign: TextAlign.center,
                                                text: matchDetailController
                                                    .matchDetailData
                                                    .value
                                                    .teams?[0]
                                                    .name,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          CustomText(
                                              text: getTime(
                                                  "${matchDetailController.matchDetailData.value.start ?? ''}"),
                                              color: Colors.white),
                                          Row(
                                            children: [
                                              CustomText(
                                                text: matchDetailController
                                                    .matchDetailData
                                                    .value
                                                    .ftScore?[0]
                                                    .toString(),
                                                color: Colors.white,
                                                fontSize: 20.sp,
                                              ),
                                              CustomText(
                                                text: ' - ',
                                                color: Colors.white,
                                                fontSize: 20.sp,
                                              ),
                                              CustomText(
                                                text: matchDetailController
                                                    .matchDetailData
                                                    .value
                                                    .ftScore?[1]
                                                    .toString(),
                                                color: Colors.white,
                                                fontSize: 20.sp,
                                              ),
                                            ],
                                          ),
                                          (matchDetailController.matchDetailData
                                                          .value.ftScore ??
                                                      [])
                                                  .isNotEmpty
                                              ? CustomText(
                                                  text: matchDetailController
                                                      .status.value,
                                                  color: Colors.white,
                                                )
                                              : Container(),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(() => const TeamScreen(),
                                              arguments: {
                                                'teamId': (matchDetailController
                                                                    .matchDetailData
                                                                    .value
                                                                    .teams ??
                                                                [])
                                                            .length >
                                                        1
                                                    ? (matchDetailController
                                                            .matchDetailData
                                                            .value
                                                            .teams?[1]
                                                            .id ??
                                                        '0')
                                                    : '0'
                                              });
                                        },
                                        child: SizedBox(
                                          width: 1.sw * 0.25,
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.sports_soccer,
                                                size: 40.sp,
                                                color: Colors.white,
                                              ),
                                              Obx(
                                                () => CustomText(
                                                  maxLines: 2,
                                                  textAlign: TextAlign.center,
                                                  text: matchDetailController
                                                      .matchDetailData
                                                      .value
                                                      .teams?[1]
                                                      .name,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                TabBar(
                                  onTap: (value) {
                                    if (value == 1) {
                                      matchDetailController.getStandings();
                                    } else if (value == 2) {
                                      matchDetailController.getH2H();
                                    }
                                  },
                                  unselectedLabelColor: Colors.white,
                                  indicatorColor: Colors.white,
                                  dividerColor: Colors.transparent,
                                  labelColor: Colors.white,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  tabs: [
                                    Tab(text: 'overall'.tr),
                                    Tab(text: 'standings'.tr),
                                    Tab(text: 'h2h'.tr),
                                  ],
                                ),
                                SizedBox(
                                  height: 1.h,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                OverallWidget(
                                  date: getDate(
                                      "${matchDetailController.matchDetailData.value.start ?? ''}"),
                                  name: matchDetailController.name.value,
                                  matchDetailModel: matchDetailController
                                      .matchDetailData.value,
                                ),
                                Obx(
                                  () => matchDetailController.isLoading1.value
                                      ? const CustomLoading()
                                      : StandingWidget(
                                          tables:
                                              matchDetailController.table.value,
                                          teamAId: (matchDetailController.matchDetailData.value.teams ?? [])
                                                  .isNotEmpty
                                              ? (matchDetailController
                                                      .matchDetailData
                                                      .value
                                                      .teams?[0]
                                                      .id ??
                                                  '')
                                              : '',
                                          teamBId: (matchDetailController
                                                              .matchDetailData
                                                              .value
                                                              .teams ??
                                                          [])
                                                      .length >
                                                  1
                                              ? (matchDetailController
                                                      .matchDetailData
                                                      .value
                                                      .teams?[1]
                                                      .id ??
                                                  '')
                                              : ''),
                                ),
                                Obx(() => matchDetailController.isLoading1.value
                                    ? const CustomLoading()
                                    : H2HWidget(
                                        h2hModel: matchDetailController
                                            .h2hModel.value,
                                      ))
                              ],
                            ),
                          ),
                        ],
                      ),
          );
        }),
      ),
    );
  }
}
