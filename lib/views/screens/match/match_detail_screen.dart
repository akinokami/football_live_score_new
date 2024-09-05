import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/views/screens/match/h2h_widget.dart';
import 'package:football_live_score/views/screens/team/team_screen.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../controller/match_detail_controller.dart';
import '../../widgets/custom_text.dart';
import 'overall_widget.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({
    super.key, required this.status,
  });
  final String status;

  @override
  Widget build(BuildContext context) {
    final matchDetailController = Get.put(MatchDetailController());

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
        body: Obx((){

         return Center(
           child: matchDetailController.isLoading.value?
           CustomLoading():
           Column(
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
                                              .matchDetailData.value.teams?[0].name,

                                          color: Colors.white,
                                        ),

                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  CustomText(text: matchDetailController.bindTime.value, color: Colors.white),
                                  Row(
                                    children: [
                                      CustomText(
                                        text: matchDetailController
                                            .matchDetailData.value.ftScore?[0]
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
                                            .matchDetailData.value.ftScore?[1]
                                            .toString(),
                                        color: Colors.white,
                                        fontSize: 20.sp,
                                      ),
                                    ],
                                  ),
                                  (matchDetailController
                                                  .matchDetailData.value.ftScore ??
                                              [])
                                          .isNotEmpty
                                      ? CustomText(
                                          text: status,
                                          color: Colors.white,
                                        )
                                      : SizedBox.shrink(),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => const TeamScreen());
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
                                              .matchDetailData.value.teams?[1].name,
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


                Expanded(
                  child: TabBarView(
                    children: [

                         OverallWidget(
                          date: matchDetailController.formatted.value,
                          name: matchDetailController.name.value,
                        ),

                      H2HWidget()
                    ],
                  ),
                ),
              ],
            ),
         );}
        ),
      ),
    );
  }
}
