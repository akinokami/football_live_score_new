import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:get/get.dart';

import '../../../utils/color_const.dart';
import '../../widgets/custom_card.dart';
import '../../widgets/custom_text.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomText(
          text: 'score'.tr,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CustomCard(
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
                              CustomText(text: 'Barzil - Series B')
                            ],
                          ),
                          kSizedBoxH5,
                          Divider(height: 1.h, color: grey),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 1.sw * 0.20,
                                child: CustomText(text: 'Team A'),
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
                                child: CustomText(text: 'Team B'),
                              ),
                            ],
                          ),
                          kSizedBoxH10,
                          Divider(height: 1.h, color: grey),
                          kSizedBoxH10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 1.sw * 0.20,
                                child: CustomText(text: 'Team A'),
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
                                child: CustomText(text: 'Team B'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
