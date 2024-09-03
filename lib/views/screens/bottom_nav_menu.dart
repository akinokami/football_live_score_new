// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:football_live_score/views/screens/play/play_screen.dart';
// import 'package:football_live_score/views/screens/setting/setting_screen.dart';
// import 'package:get/get.dart';

// import '../../controller/home_controller.dart';
// import '../../utils/app_theme.dart';

// class BottomNavMenu extends StatelessWidget {
//   BottomNavMenu({super.key});

//   final TextStyle unselectedLabelStyle = TextStyle(
//       color: Colors.white.withOpacity(0.5),
//       fontWeight: FontWeight.w500,
//       fontSize: 10.sp);

//   final TextStyle selectedLabelStyle = TextStyle(
//       color: Colors.white, fontWeight: FontWeight.w500, fontSize: 10.sp);

//   buildBottomNavigationMenu(context, landingPageController) {
//     return Obx(() => MediaQuery(
//         data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
//         child: SizedBox(
//           height: 55.h,
//           child: BottomNavigationBar(
//             selectedFontSize: 10.sp,
//             unselectedFontSize: 10.sp,
//             showUnselectedLabels: true,
//             showSelectedLabels: true,
//             onTap: landingPageController.changeTabIndex,
//             currentIndex: landingPageController.tabIndex.value,
//             backgroundColor: AppTheme.white,
//             unselectedItemColor: AppTheme.grey,
//             selectedItemColor: AppTheme.premiumColor2,
//             unselectedLabelStyle: unselectedLabelStyle,
//             selectedLabelStyle: selectedLabelStyle,
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.home,
//                   size: 15.sp,
//                 ),
//                 label: 'play'.tr,
//                 backgroundColor: AppTheme.white,
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.settings,
//                   size: 15.sp,
//                 ),
//                 label: 'settings'.tr,
//                 backgroundColor: AppTheme.white,
//               ),
//             ],
//           ),
//         )));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final HomeController homeController =
//         Get.put(HomeController(), permanent: false);
//     return SafeArea(
//         child: Scaffold(
//       bottomNavigationBar: buildBottomNavigationMenu(context, homeController),
//       body: Obx(() => IndexedStack(
//             index: homeController.tabIndex.value,
//             children: const [
//               PlayScreen(),
//               SettingScreen(),
//             ],
//           )),
//     ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football_live_score/utils/enum.dart';
import 'package:football_live_score/views/screens/score/score_screen.dart';
import 'package:football_live_score/views/screens/settings/setting_screen.dart';
import 'package:football_live_score/views/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../controller/bottom_nav_controller.dart';
import '../../utils/color_const.dart';
import '../../utils/global.dart';

class BottomNavMenu extends StatefulWidget {
  const BottomNavMenu({super.key});

  @override
  State<BottomNavMenu> createState() => _BottomNavMenuState();
}

class _BottomNavMenuState extends State<BottomNavMenu> {
  bool isAccepted = false;
  bool isChecked = false;
  String first = '';

  @override
  void initState() {
    super.initState();
    final box = GetStorage();
    first = box.read('first') ?? '';

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      try {
        if (first == '') {
          if (context.mounted) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (ctx) => Builder(builder: (context) {
                return StatefulBuilder(
                  builder: (context, StateSetter setState) {
                    return AlertDialog(
                      surfaceTintColor: whiteColor,
                      backgroundColor: whiteColor,
                      content: SizedBox(
                        height: 1.sh * 0.80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SingleChildScrollView(
                              child: SizedBox(
                                  height: 1.sh * 0.65,
                                  width: double.infinity,
                                  child: WebViewWidget(
                                      controller: WebViewController()
                                        ..loadHtmlString(
                                            Global.language == Language.vi.name
                                                ? Global.policyVi
                                                : Global.language ==
                                                        Language.hi.name
                                                    ? Global.policyHi
                                                    : Global.policyEn))),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  activeColor: secondaryColor,
                                  side: BorderSide(
                                    width: 1.5,
                                    color: isChecked
                                        ? secondaryColor
                                        : Colors.black,
                                  ),
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                      if (isChecked) {
                                        isAccepted = true;
                                      } else {
                                        isAccepted = false;
                                      }
                                    });
                                  },
                                ),
                                CustomText(
                                  text: 'agree'.tr,
                                  color: secondaryColor,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateColor.resolveWith((states) =>
                                          isAccepted
                                              ? secondaryColor
                                              : greyColor)),
                              // ignore: sort_child_properties_last
                              child: CustomText(
                                text: "accept".tr,
                                color: whiteColor,
                              ),
                              onPressed: isAccepted
                                  ? () async {
                                      final box = GetStorage();
                                      box.write('first', 'notfirst');
                                      Navigator.pop(context);
                                    }
                                  : null,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            );
          }
        }
      } catch (e) {
        // print("Error fetching SharedPreferences: $e");
      }
    });
  }

  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 11.sp);

  final TextStyle selectedLabelStyle = TextStyle(
      color: secondaryColor, fontWeight: FontWeight.w500, fontSize: 11.sp);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 55.h,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: whiteColor,
            unselectedItemColor: Colors.black54,
            selectedItemColor: secondaryColor,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.scoreboard_outlined,
                  size: 18.w,
                ),
                label: 'score'.tr,
                backgroundColor: primaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 18.w,
                ),
                label: 'settings'.tr,
                backgroundColor: primaryColor,
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
        Get.put(BottomNavController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      backgroundColor: primaryColor,
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavController),
      body: Obx(() => IndexedStack(
            index: bottomNavController.tabIndex.value,
            children: const [
              PlayScreen(),
              SettingScreen(),
            ],
          )),
    ));
  }
}
