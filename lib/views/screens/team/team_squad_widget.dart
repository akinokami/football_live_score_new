import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';

import '../../../models/team_model.dart';

class TeamSquadWidget extends StatelessWidget {
  final List<Participants>? players;
  final List<Participants>? coach;
  const TeamSquadWidget({super.key, this.players, this.coach});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Visibility(
          visible: (players ?? []).isNotEmpty,
          child: CustomCard(
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: 'Players'),
                kSizedBoxH5,
                Divider(height: 1.h, color: grey.withOpacity(0.3)),
                kSizedBoxH5,
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: players?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 30.sp,
                            color: secondaryColor,
                          ),
                          kSizedBoxW5,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: players?[index].name),
                              CustomText(
                                text: players?[index].cname,
                                fontSize: 11.sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: (coach ?? []).isNotEmpty,
          child: CustomCard(
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: 'Coach'),
                kSizedBoxH5,
                Divider(height: 1.h, color: grey.withOpacity(0.3)),
                kSizedBoxH5,
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: coach?.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 30.sp,
                            color: secondaryColor,
                          ),
                          kSizedBoxW5,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: coach?[index].name),
                              CustomText(
                                text: coach?[index].cname,
                                fontSize: 11.sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
