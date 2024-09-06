import 'package:football_live_score/models/match_detail_model.dart';
import 'package:get/get.dart';
import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;
  Rx<MatchDetailModel> matchDetailData = MatchDetailModel().obs;
  final matchId = "".obs;
  final status = "".obs;
  RxString name = "".obs;

  @override
  void onInit() {
    matchId.value = Get.arguments['matchId'];
    status.value = Get.arguments['status'];
    getMatchesDetail(matchId.value);
    super.onInit();
  }

  Future<void> getMatchesDetail(String matchID) async {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 1), () async {
      try {
        final result = await ApiRepo().getMatchesDetail(matchID);
        matchDetailData.value = result;
        name.value =
            "${matchDetailData.value.cName} ${matchDetailData.value.stName}";
      } catch (e) {
        constants.showSnackBar(
            title: 'Error', msg: e.toString(), textColor: red);
      } finally {
        isLoading.value = false;
      }
    });
  }
}
