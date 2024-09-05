import 'package:football_live_score/models/match_detail_model.dart';
import 'package:get/get.dart';
import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class MatchController extends GetxController {
  final isLoading = false.obs;
  Rx<MatchDetailModel> matchDetailData = MatchDetailModel().obs;

  @override
  void onInit() {
    super.onInit();
   
  }

  Future<void> getMatchesDetail(String matchID) async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getMatchesDetail(matchID);
      matchDetailData.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
