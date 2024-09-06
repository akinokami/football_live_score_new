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
  final formattedDate = ''.obs;

  @override
  void onInit() {
    formattedDate.value = formatDate(DateTime.now());
    getMatches();
    super.onInit();
  }

  void setDate(DateTime pickedDate) {
    formattedDate.value = formatDate(pickedDate);
    getMatches();
  }

  Future<void> getMatches() async {
    isLoading.value = true;
    try {
      final result =
          await ApiRepo().getMatches(formattedDate.value, formattedDate.value);
      // .getMatches('2024-09-04T16:00:00', '2024-09-06T15:59:59');
      matches.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
