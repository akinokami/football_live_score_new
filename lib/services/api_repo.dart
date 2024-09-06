import 'package:football_live_score/models/match_model.dart';
import 'package:football_live_score/models/team_model.dart';
import 'package:football_live_score/services/api_utils.dart';

import '../models/match_detail_model.dart';
import '../utils/custom_exception.dart';
import 'api_constant.dart';

class ApiRepo {
  final ApiUtils apiUtils = ApiUtils();

  ///Matches
  Future<List<MatchModel>> getMatches(String startDate, String endDate) async {
    try {
      final response = await apiUtils.get(
          url:
              "${ApiConstant.baseUrl}en/matches/soccer/from/${startDate}T16:00:00/to/${endDate}T15:59:59",
          queryParameters: {
            "oddsPresentationConfigsId": "SNAPSCORE_APP_1X2_V1"
          });
      final matches = response.data as List;
      return matches.map((item) => MatchModel.fromJson(item)).toList();
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Lives
  Future<List<MatchModel>> getLives() async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}en/matches/soccer/live",
          queryParameters: {
            "oddsPresentationConfigsId": "SNAPSCORE_APP_1X2_V1"
          });
      if (response.data == "[]") {
        return [];
      }
      final matches = response.data as List;
      return matches.map((item) => MatchModel.fromJson(item)).toList();
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Matches Detail
  Future<MatchDetailModel> getMatchesDetail(String matchID) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}en/match/soccer/full/$matchID",
          queryParameters: {
            "oddsPresentationConfigsId": "SNAPSCORE_APP_MAIN_MARKETS_V1"
          });
      final matchDetail = response.data;
      return MatchDetailModel.fromJson(matchDetail);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }

  ///Team
  Future<TeamModel> getTeam(String teamId) async {
    try {
      final response = await apiUtils.get(
          url: "${ApiConstant.baseUrl}en/team/soccer/teampage/$teamId");
      final team = response.data;
      return TeamModel.fromJson(team);
    } catch (e) {
      throw CustomException(e.toString());
    }
  }
}
