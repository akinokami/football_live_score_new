import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/controller/match_controller.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/utils/function.dart';
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
            : Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  children: [
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: matchController.formattedDate.value),
                          IconButton(
                            onPressed: () async {
                              DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: matchController.selectedDate.value,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2101),
                              );
                              if (picked != null &&
                                  picked !=
                                      matchController.selectedDate.value) {
                                matchController.getMatches();
                              }
                            },
                            icon: Icon(
                              Icons.calendar_month,
                              color: secondaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: matchController.matches.length,
                          itemBuilder: (context, index) {
                            return CustomCard(
                              widget: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    fontWeight: FontWeight.w500,
                                    text:
                                        "${matchController.matches[index].cName ?? ''} ${matchController.matches[index].stName ?? ''}",
                                    isEllip: true,
                                  ),
                                  kSizedBoxH5,
                                  Divider(
                                      height: 1.h,
                                      color: grey.withOpacity(0.3)),
                                  kSizedBoxH5,
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: matchController
                                          .matches[index].matches?.length,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index1) {
                                        return InkWell(
                                          onTap: () {
                                            Get.to(
                                                () => const MatchDetailScreen(),
                                                arguments: {
                                                  'matchId': matchController
                                                          .matches[index]
                                                          .matches?[index1]
                                                          .id ??
                                                      '',
                                                  'status': (matchController
                                                                  .matches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ??
                                                              0) ==
                                                          6
                                                      ? 'FT'
                                                      : (matchController
                                                                      .matches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ??
                                                                  0) ==
                                                              1
                                                          ? getTime(
                                                              "${matchController.matches[index].matches?[index1].start ?? ''}")
                                                          : (matchController
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
                                                    text: (matchController
                                                                    .matches[
                                                                        index]
                                                                    .matches?[
                                                                        index1]
                                                                    .teams ??
                                                                [])
                                                            .isNotEmpty
                                                        ? (matchController
                                                                .matches[index]
                                                                .matches?[
                                                                    index1]
                                                                .teams?[0]
                                                                .name ??
                                                            '')
                                                        : '',
                                                    textAlign: TextAlign.right,
                                                    maxLines: 2,
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w500,
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
                                                      visible: matchController
                                                                  .matches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              2 ||
                                                          matchController
                                                                  .matches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              3 ||
                                                          matchController
                                                                  .matches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              6 ||
                                                          matchController
                                                                  .matches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              10 ||
                                                          matchController
                                                                  .matches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              11 ||
                                                          matchController
                                                                  .matches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              17,
                                                      child: CustomText(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          text:
                                                              '${matchController.matches[index].matches?[index1].ftScore?[0] ?? ''} - ${matchController.matches[index].matches?[index1].ftScore?[1] ?? ''}'),
                                                    ),
                                                    CustomText(
                                                        color: greyColor
                                                            .withOpacity(0.5),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        text: matchController
                                                                    .matches[
                                                                        index]
                                                                    .matches?[
                                                                        index1]
                                                                    .status ==
                                                                6
                                                            ? 'FT'
                                                            : matchController
                                                                        .matches[
                                                                            index]
                                                                        .matches?[
                                                                            index1]
                                                                        .status ==
                                                                    1
                                                                ? getTime(
                                                                    "${matchController.matches[index].matches?[index1].start ?? ''}")
                                                                : (matchController
                                                                        .matches[
                                                                            index]
                                                                        .matches?[
                                                                            index1]
                                                                        .statusText ??
                                                                    ''))
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
                                                    text: (matchController
                                                                        .matches[
                                                                            index]
                                                                        .matches?[
                                                                            index1]
                                                                        .teams ??
                                                                    [])
                                                                .length >
                                                            1
                                                        ? (matchController
                                                                .matches[index]
                                                                .matches?[
                                                                    index1]
                                                                .teams?[1]
                                                                .name ??
                                                            '')
                                                        : '',
                                                    textAlign: TextAlign.left,
                                                    maxLines: 2,
                                                    fontWeight: FontWeight.w500,
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
