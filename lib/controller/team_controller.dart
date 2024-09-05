import 'package:football_live_score/models/team_model.dart';
import 'package:get/get.dart';

import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class TeamController extends GetxController {
  final isLoading = false.obs;
  final teamId = ''.obs;
  Rx<TeamModel> team = TeamModel().obs;
  RxList<Participants> players = <Participants>[].obs;
  RxList<Participants> coach = <Participants>[].obs;

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
      if ((team.value.participants ?? []).isNotEmpty) {
        players.value = (team.value.participants ?? [])
            .where((element) => element.kn == 2)
            .toList();
        coach.value = (team.value.participants ?? [])
            .where((element) => element.kn == 4)
            .toList();
      }
    } catch (e) {
      constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
    } finally {
      isLoading.value = false;
    }
  }
}
