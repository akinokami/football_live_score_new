import 'package:football_live_score/models/match_detail_model.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../services/api_repo.dart';
import '../utils/color_const.dart';
import '../utils/constants.dart';

class MatchDetailController extends GetxController {
  final isLoading = false.obs;
  Rx<MatchDetailModel> matchDetailData = MatchDetailModel().obs;
  RxString date ="".obs;

  RxList dateList = [].obs;


  RxString bindDate = "".obs;
  RxString bindTime = "".obs;
  RxString formatted = "".obs;
  RxString name = "".obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> getMatchesDetail(String matchID) async {
    isLoading.value = true;
    Future.delayed(const Duration(seconds: 1), () async{
      try {
        final result = await ApiRepo().getMatchesDetail(matchID);
        matchDetailData.value = result;
        date.value=matchDetailData.value.start.toString();
  dateList.value=date.split('');
  var date1 = dateList[0] + dateList[1] + dateList[2] + dateList[3];
  var date2 = dateList[4] + dateList[5];
  var date3 = dateList[6] + dateList[7];
  var date4 = dateList[8] + dateList[9];
  var date5 = dateList[10] + dateList[11];
  var date6 = dateList[12] + dateList[13];
  bindDate.value="$date1/$date2/$date3";
  bindTime.value="$date4:$date5:$date6";
        DateFormat formatter = DateFormat('d MMMM yyyy, EEEE');
        formatted.value =
            formatter.format(DateFormat('yyyy/MM/dd').parse(bindDate.value));
        name.value =
        "${matchDetailData.value.cName} ${matchDetailData.value.stName}";
        print("Here is date $formatted");
      } catch (e) {
        constants.showSnackBar(title: 'Error', msg: e.toString(), textColor: red);
      } finally {
        isLoading.value = false;
      }
    });

  }
}
