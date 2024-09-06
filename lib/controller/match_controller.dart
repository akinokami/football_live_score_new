import 'package:get/get.dart';

import '../models/match_model.dart';
import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';
import '../utils/function.dart';

class MatchController extends GetxController {
  final isLoading = false.obs;
  RxList<MatchModel> matches = <MatchModel>[].obs;
  var selectedDate = DateTime.now().obs;
  final startDate = ''.obs;
  final endDate = ''.obs;

  @override
  void onInit() {
    startDate.value = formatDate(DateTime.now());
    endDate.value =
        formatDate(DateTime.now().subtract(const Duration(days: 1)));
    getMatches();
    super.onInit();
  }

  void setDate(DateTime pickedDate) {
    startDate.value = formatDate(pickedDate);
    endDate.value = formatDate(pickedDate.subtract(const Duration(days: 1)));
    getMatches();
  }

  Future<void> getMatches() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getMatches(endDate.value, startDate.value);
      matches.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
