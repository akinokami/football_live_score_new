import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/views/screens/match/h2h_widget.dart';
import 'package:football_live_score/views/screens/team/team_screen.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text.dart';
import 'overall_widget.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
        body: Column(
          children: [
            Container(
              color: secondaryColor,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const TeamScreen());
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.sports_soccer,
                                size: 40.sp,
                                color: Colors.white,
                              ),
                              const CustomText(
                                text: 'teamA',
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            const CustomText(
                                text: "09/07/2024", color: Colors.white),
                            Row(
                              children: [
                                CustomText(
                                  text: '2',
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                ),
                                CustomText(
                                  text: ' - ',
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                ),
                                CustomText(
                                  text: '1',
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                ),
                              ],
                            ),
                            const CustomText(
                              text: 'FT',
                              color: Colors.white,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => const TeamScreen());
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.sports_soccer,
                                size: 40.sp,
                                color: Colors.white,
                              ),
                              const CustomText(
                                text: 'teamB',
                                color: Colors.white,
                              ),
                            ],
                          ),
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
                      Tab(text: 'overall'.tr),
                      Tab(text: 'h2h'.tr),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  )
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [OverallWidget(), H2HWidget()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
