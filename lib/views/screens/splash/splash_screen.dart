import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:football_live_score/controller/splash_controller.dart';
import 'package:football_live_score/views/widgets/custom_loading.dart';
import 'package:get/get.dart';

import '../../../utils/color_const.dart';
import '../../../utils/dimen_const.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.webp',
              height: 80.h,
            ),
            // FlutterLogo(
            //   size: 80.h,
            // ),
            kSizedBoxH30,
            kSizedBoxH30,
            const CustomLoading()
          ],
        ),
      ),
    );
  }
}
