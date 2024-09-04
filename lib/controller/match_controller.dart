import 'package:get/get.dart';

import '../models/match_model.dart';
import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class MatchController extends GetxController {
  final isLoading = false.obs;
  Rx<MatchModel> match = MatchModel().obs;

  @override
  void onInit() {
    super.onInit();
    getMatches();
  }

  Future<void> getMatches() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getMatches();
      match.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
