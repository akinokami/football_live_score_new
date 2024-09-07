class StandingModel {
  String? cId;
  String? cName;
  String? cFlag;
  String? stId;
  String? stName;
  String? stCode;
  int? stGender;
  int? start;
  int? end;
  int? pid;
  int? sId;
  CupInfo? cupInfo;
  L? l;

  StandingModel(
      {this.cId,
      this.cName,
      this.cFlag,
      this.stId,
      this.stName,
      this.stCode,
      this.stGender,
      this.start,
      this.end,
      this.pid,
      this.sId,
      this.cupInfo,
      this.l});

  StandingModel.fromJson(Map<String, dynamic> json) {
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    stId = json['st_id'];
    stName = json['st_name'];
    stCode = json['st_code'];
    stGender = json['st_gender'];
    start = json['start'];
    end = json['end'];
    pid = json['pid'];
    sId = json['s_id'];
    cupInfo =
        json['cupInfo'] != null ? CupInfo.fromJson(json['cupInfo']) : null;
    l = json['L'] != null ? L.fromJson(json['L']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_flag'] = cFlag;
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_code'] = stCode;
    data['st_gender'] = stGender;
    data['start'] = start;
    data['end'] = end;
    data['pid'] = pid;
    data['s_id'] = sId;
    if (cupInfo != null) {
      data['cupInfo'] = cupInfo!.toJson();
    }
    if (l != null) {
      data['L'] = l!.toJson();
    }
    return data;
  }
}

class CupInfo {
  int? isCupInfoAvailable;
  int? isCup;

  CupInfo({this.isCupInfoAvailable, this.isCup});

  CupInfo.fromJson(Map<String, dynamic> json) {
    isCupInfoAvailable = json['isCupInfoAvailable'];
    isCup = json['isCup'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isCupInfoAvailable'] = isCupInfoAvailable;
    data['isCup'] = isCup;
    return data;
  }
}

class L {
  List<Tables>? tables;

  L({this.tables});

  L.fromJson(Map<String, dynamic> json) {
    if (json['tables'] != null) {
      tables = <Tables>[];
      json['tables'].forEach((v) {
        tables!.add(Tables.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (tables != null) {
      data['tables'] = tables!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tables {
  int? code;
  String? name;
  List<Legend>? legend;
  List<Teams>? teams;

  Tables({this.code, this.name, this.legend, this.teams});

  Tables.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    if (json['legend'] != null) {
      legend = <Legend>[];
      json['legend'].forEach((v) {
        legend!.add(Legend.fromJson(v));
      });
    }
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    if (legend != null) {
      data['legend'] = legend!.map((v) => v.toJson()).toList();
    }
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Legend {
  int? stagePhase;
  String? stagePhaseText;

  Legend({this.stagePhase, this.stagePhaseText});

  Legend.fromJson(Map<String, dynamic> json) {
    stagePhase = json['stage_phase'];
    stagePhaseText = json['stage_phase_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stage_phase'] = stagePhase;
    data['stage_phase_text'] = stagePhaseText;
    return data;
  }
}

class Teams {
  int? ranking;
  String? teamId;
  String? teamName;
  String? played;
  String? wins;
  String? draws;
  String? loss;
  String? goalFor;
  String? goalAgainst;
  String? goalDifference;
  String? points;
  int? inProgress;
  List<String>? form;
  List<int>? stagePhases;

  Teams(
      {this.ranking,
      this.teamId,
      this.teamName,
      this.played,
      this.wins,
      this.draws,
      this.loss,
      this.goalFor,
      this.goalAgainst,
      this.goalDifference,
      this.points,
      this.inProgress,
      this.form,
      this.stagePhases});

  Teams.fromJson(Map<String, dynamic> json) {
    ranking = json['ranking'];
    teamId = json['team_id'];
    teamName = json['team_name'];
    played = json['played'];
    wins = json['wins'];
    draws = json['draws'];
    loss = json['loss'];
    goalFor = json['goal_for'];
    goalAgainst = json['goal_against'];
    goalDifference = json['goal_difference'];
    points = json['points'];
    inProgress = json['in_progress'];
    form = json['form'] != null ? json['form'].cast<String>() : [];
    stagePhases =
        json['stage_phases'] != null ? json['stage_phases'].cast<int>() : [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ranking'] = ranking;
    data['team_id'] = teamId;
    data['team_name'] = teamName;
    data['played'] = played;
    data['wins'] = wins;
    data['draws'] = draws;
    data['loss'] = loss;
    data['goal_for'] = goalFor;
    data['goal_against'] = goalAgainst;
    data['goal_difference'] = goalDifference;
    data['points'] = points;
    data['in_progress'] = inProgress;
    data['form'] = form;
    data['stage_phases'] = stagePhases;
    return data;
  }
}
