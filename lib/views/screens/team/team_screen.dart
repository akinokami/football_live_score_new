import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/controller/team_controller.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/screens/team/squard_widget.dart';
import 'package:football_live_score/views/screens/team/team_match_widget.dart';
import 'package:football_live_score/views/screens/team/team_info_widget.dart';
import 'package:football_live_score/views/screens/team/team_result_widget.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final teamController = Get.put(TeamController());
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: secondaryColor,
          iconTheme: const IconThemeData(color: Colors.white),
          title: CustomText(
            text: 'team'.tr,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        body: Obx(
          () => teamController.isLoading.value
              ? const Center(
                  child: CustomLoading(),
                )
              : Column(
                  children: [
                    Container(
                      color: secondaryColor,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10.w),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.sports_soccer,
                                  size: 40.sp,
                                  color: Colors.white,
                                ),
                                kSizedBoxW5,
                                CustomText(
                                  text: teamController.team.value.name ?? '',
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          TabBar(
                            unselectedLabelColor: Colors.white,
                            indicatorColor: Colors.white,
                            dividerColor: Colors.transparent,
                            labelColor: Colors.white,
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabs: [
                              Tab(text: 'info'.tr),
                              Tab(text: 'matches'.tr),
                              Tab(text: 'result'.tr),
                              Tab(text: 'squard'.tr),
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
                          TeamInfoWidget(
                            stages: teamController.team.value.stages ?? [],
                          ),
                          TeamMatchWidget(
                            matches: teamController.team.value.fixtures ?? [],
                          ),
                          TeamResultWidget(
                            results: teamController.team.value.results ?? [],
                          ),
                          SquardWidget(
                            players: teamController.players,
                            coach: teamController.coach,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
