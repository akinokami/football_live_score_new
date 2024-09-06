import 'dart:async';

import 'package:football_live_score/models/match_model.dart';
import 'package:get/get.dart';

import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class LiveController extends GetxController {
  final isLoading = false.obs;
  RxList<MatchModel> matches = <MatchModel>[].obs;

  @override
  void onInit() {
    getLives();
    Timer.periodic(const Duration(minutes: 1), ((timer) async {
      getLiveMatches();
    }));
    super.onInit();
  }

  Future<void> getLives() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getLives();
      matches.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getLiveMatches() async {
    try {
      final result = await ApiRepo().getLives();
      matches.value = result;
    } catch (e) {
      //constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    }
  }
}
