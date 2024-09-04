import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/screens/team/team_match_widget.dart';
import 'package:football_live_score/views/screens/team/team_overall_widget.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: Column(
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
                        Column(
                          children: [
                            CustomText(
                              text: 'team',
                              color: Colors.white,
                            ),
                            CustomText(
                              text: 'world',
                              color: Colors.white,
                            ),
                          ],
                        )
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
                      Tab(text: 'matches'.tr),
                      Tab(text: 'standing'.tr),
                      Tab(text: 'squard'.tr),
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
                children: [
                  OverallWidget(),
                  TeamMatchWidget(),
                  Icon(Icons.directions_car, size: 350),
                  Icon(Icons.directions_car, size: 350),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
