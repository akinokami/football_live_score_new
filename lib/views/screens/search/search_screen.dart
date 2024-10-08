import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/utils/function.dart';
import 'package:football_live_score/views/screens/match/match_detail_screen.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:football_live_score/views/widgets/custom_text_form_field.dart';
import 'package:get/get.dart';
import '../../../controller/search_match_controller.dart';
import '../../../utils/color_const.dart';
import '../../widgets/custom_card.dart';
import '../../widgets/custom_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = Get.put(SearchMatchController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: CustomText(
          text: 'search'.tr,
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Obx(
        () => searchController.isLoading.value
            ? const Center(
                child: CustomLoading(),
              )
            : Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.w),
                      child: CustomTextFormField(
                        controller: searchController.searchTxtController,
                        hintText: 'search'.tr,
                        isValidate: false,
                        onChange: (value) {
                          searchController.searchMatch();
                        },
                      ),
                    ),
                    kSizedBoxH10,
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchController.searchMatches.length,
                          itemBuilder: (context, index) {
                            return CustomCard(
                              widget: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    fontWeight: FontWeight.w500,
                                    text:
                                        "${searchController.searchMatches[index].cName ?? ''} ${searchController.searchMatches[index].stName ?? ''}",
                                    isEllip: true,
                                  ),
                                  kSizedBoxH5,
                                  Divider(
                                      height: 1.h,
                                      color: grey.withOpacity(0.3)),
                                  kSizedBoxH5,
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: searchController
                                          .searchMatches[index].matches?.length,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index1) {
                                        return InkWell(
                                          onTap: () {
                                            Get.to(
                                                () => const MatchDetailScreen(),
                                                arguments: {
                                                  'matchId': searchController
                                                          .searchMatches[index]
                                                          .matches?[index1]
                                                          .id ??
                                                      '',
                                                  'status': (searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ??
                                                              0) ==
                                                          6
                                                      ? 'FT'
                                                      : (searchController
                                                                      .searchMatches[
                                                                          index]
                                                                      .matches?[
                                                                          index1]
                                                                      .status ??
                                                                  0) ==
                                                              17
                                                          ? 'Abandoned'
                                                          : (searchController
                                                                          .searchMatches[
                                                                              index]
                                                                          .matches?[
                                                                              index1]
                                                                          .status ??
                                                                      0) ==
                                                                  1
                                                              ? getTime(
                                                                  "${searchController.searchMatches[index].matches?[index1].start ?? ''}")
                                                              : (searchController
                                                                      .searchMatches[
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
                                                    text: (searchController
                                                                    .searchMatches[
                                                                        index]
                                                                    .matches?[
                                                                        index1]
                                                                    .teams ??
                                                                [])
                                                            .isNotEmpty
                                                        ? (searchController
                                                                .searchMatches[
                                                                    index]
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
                                                      visible: searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              2 ||
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              3 ||
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              6 ||
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              10 ||
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              11 ||
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              17,
                                                      child: CustomText(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          text:
                                                              '${searchController.searchMatches[index].matches?[index1].ftScore?[0] ?? ''} - ${searchController.searchMatches[index].matches?[index1].ftScore?[1] ?? ''}'),
                                                    ),
                                                    Visibility(
                                                      visible: searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              2 ||
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status ==
                                                              3 ||
                                                          searchController
                                                                  .searchMatches[
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
                                                            EdgeInsets.all(3.w),
                                                        alignment:
                                                            Alignment.center,
                                                        child: CustomText(
                                                          color: Colors.white,
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          text: searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .statusText ??
                                                              '',
                                                        ),
                                                      ),
                                                    ),
                                                    Visibility(
                                                      visible: searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status !=
                                                              2 &&
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status !=
                                                              3 &&
                                                          searchController
                                                                  .searchMatches[
                                                                      index]
                                                                  .matches?[
                                                                      index1]
                                                                  .status !=
                                                              10,
                                                      child: CustomText(
                                                        color: greyColor
                                                            .withOpacity(0.5),
                                                        fontSize: 10.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        text: searchController
                                                                    .searchMatches[
                                                                        index]
                                                                    .matches?[
                                                                        index1]
                                                                    .status ==
                                                                6
                                                            ? 'FT'
                                                            : searchController
                                                                        .searchMatches[
                                                                            index]
                                                                        .matches?[
                                                                            index1]
                                                                        .status ==
                                                                    17
                                                                ? 'AB'
                                                                : searchController
                                                                            .searchMatches[
                                                                                index]
                                                                            .matches?[
                                                                                index1]
                                                                            .status ==
                                                                        1
                                                                    ? getTime(
                                                                        "${searchController.searchMatches[index].matches?[index1].start ?? ''}")
                                                                    : (searchController
                                                                            .searchMatches[index]
                                                                            .matches?[index1]
                                                                            .statusText ??
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
                                                    text: (searchController
                                                                        .searchMatches[
                                                                            index]
                                                                        .matches?[
                                                                            index1]
                                                                        .teams ??
                                                                    [])
                                                                .length >
                                                            1
                                                        ? (searchController
                                                                .searchMatches[
                                                                    index]
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
