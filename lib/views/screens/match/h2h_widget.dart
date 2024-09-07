import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/models/h2h.dart';
import 'package:football_live_score/utils/color_const.dart';
import 'package:football_live_score/utils/dimen_const.dart';
import 'package:football_live_score/views/widgets/custom_card.dart';
import 'package:get/get.dart';

import '../../widgets/custom_text.dart';

class H2HWidget extends StatelessWidget {
  final H2HModel? h2hModel;
  const H2HWidget({super.key, this.h2hModel});

  @override
  Widget build(BuildContext context) {
    return (h2hModel?.h2h?.matches ?? []).isEmpty
        ? Center(
            child: CustomText(text: 'no_data'.tr),
          )
        : ListView.builder(
            shrinkWrap: true,
            itemCount: h2hModel?.h2h?.matches?.length,
            itemBuilder: (context, index) {
              return CustomCard(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      fontWeight: FontWeight.w500,
                      text:
                          "${h2hModel?.h2h?.matches?[index].cName ?? ''} ${h2hModel?.h2h?.matches?[index].stName ?? ''}",
                      isEllip: true,
                    ),
                    kSizedBoxH5,
                    Divider(height: 1.h, color: grey.withOpacity(0.3)),
                    kSizedBoxH5,
                    Padding(
                      padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 1.sw * 0.25,
                            child: CustomText(
                              text: (h2hModel?.h2h?.matches?[index].teams ?? [])
                                      .isNotEmpty
                                  ? (h2hModel?.h2h?.matches?[index].teams?[0]
                                          .name ??
                                      '')
                                  : '',
                              textAlign: TextAlign.right,
                              maxLines: 2,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: greyColor.withOpacity(0.7),
                            ),
                          ),
                          Icon(
                            Icons.sports_soccer,
                            size: 18.sp,
                            color: secondaryColor,
                          ),
                          Column(
                            children: [
                              CustomText(
                                  fontWeight: FontWeight.w500,
                                  text:
                                      '${h2hModel?.h2h?.matches?[index].score?[0] ?? ''} - ${h2hModel?.h2h?.matches?[index].score?[1] ?? ''}'),
                              CustomText(
                                color: greyColor.withOpacity(0.5),
                                fontWeight: FontWeight.w500,
                                text: 'FT',
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
                              text: (h2hModel?.h2h?.matches?[index].teams ?? [])
                                          .length >
                                      1
                                  ? (h2hModel?.h2h?.matches?[index].teams?[1]
                                          .name ??
                                      '')
                                  : '',
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                              color: greyColor.withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            });
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CustomCard(
//               widget: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.green,
//             borderRadius: BorderRadius.circular(5),
//           ),
//           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
//           child: CustomText(
//             text: "4",
//             color: Colors.white,
//           ),
//         ),
//         CustomText(text: "Wins", color: greyColor),
//       ],
//     ),
//     Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.grey,
//             borderRadius: BorderRadius.circular(5),
//           ),
//           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
//           child: CustomText(
//             text: "0",
//             color: Colors.white,
//           ),
//         ),
//         CustomText(text: "Draws", color: greyColor),
//       ],
//     ),
//     Column(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.circular(5),
//           ),
//           padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
//           child: CustomText(
//             text: "6",
//             color: Colors.white,
//           ),
//         ),
//         CustomText(text: "Wins", color: greyColor),
//       ],
//     )
//   ],
// ),
// kSizedBoxH30,
//               Column(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(text: "Sat , Aug 2024",color: greyColor,),
//                       kSizedBoxH5,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Row(
//                             children: [
//                               CustomText(text: "TeamA"),
//                               Icon(Icons.sports_soccer),
//                             ],
//                           ),
//                           Container(
//                               padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
//                               decoration: BoxDecoration(
//                                   color: Colors.green,
//                                   borderRadius: BorderRadius.circular(5)),
//                               child: CustomText(text: "2 - 1")),
//                           Row(
//                             children: [

//                               Icon(Icons.sports_soccer),
//                               CustomText(text: "TeamB"),
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   kSizedBoxH15,
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(text: "Sat , Aug 2024",color: greyColor,),
//                       kSizedBoxH5,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Row(
//                             children: [
//                               CustomText(text: "TeamA"),
//                               Icon(Icons.sports_soccer),
//                             ],
//                           ),
//                           Container(
//                               padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
//                               decoration: BoxDecoration(
//                                   color: Colors.green,
//                                   borderRadius: BorderRadius.circular(5)),
//                               child: CustomText(text: "1 - 0")),
//                           Row(
//                             children: [

//                               Icon(Icons.sports_soccer),
//                               CustomText(text: "TeamB"),
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   kSizedBoxH15,
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(text: "Sat , Aug 2024",color: greyColor,),
//                       kSizedBoxH5,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Row(
//                             children: [
//                               CustomText(text: "TeamB"),
//                               Icon(Icons.sports_soccer),
//                             ],
//                           ),
//                           Container(
//                               padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
//                               decoration: BoxDecoration(
//                                   color: Colors.red,
//                                   borderRadius: BorderRadius.circular(5)),
//                               child: CustomText(text: "1 - 0")),
//                           Row(
//                             children: [

//                               Icon(Icons.sports_soccer),
//                               CustomText(text: "TeamA"),
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                   kSizedBoxH15,
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(text: "Sat , Aug 2024",color: greyColor,),
//                       kSizedBoxH5,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Row(
//                             children: [
//                               CustomText(text: "TeamA"),
//                               Icon(Icons.sports_soccer),
//                             ],
//                           ),
//                           Container(
//                               padding: EdgeInsets.symmetric(horizontal:5.w,vertical:2.h),
//                               decoration: BoxDecoration(
//                                   color: Colors.grey,
//                                   borderRadius: BorderRadius.circular(5)),
//                               child: CustomText(text: "1 - 1")),
//                           Row(
//                             children: [

//                               Icon(Icons.sports_soccer),
//                               CustomText(text: "TeamB"),
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),

//             ],
//           ))
//         ],
//       ),
//     );
  }
}
