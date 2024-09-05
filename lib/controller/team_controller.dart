import 'package:football_live_score/models/team_model.dart';
import 'package:get/get.dart';

import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class TeamController extends GetxController {
  final isLoading = false.obs;
  final teamId = ''.obs;
  Rx<TeamModel> team = TeamModel().obs;

  @override
  void onInit() {
    teamId.value = Get.arguments['teamId'];
    getTeam();
    super.onInit();
  }

  Future<void> getTeam() async {
    isLoading.value = true;
    try {
      final result = await ApiRepo().getTeam(teamId.value);
      team.value = result;
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
