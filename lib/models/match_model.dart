class MatchModel {
  String? cName;
  String? cCode;
  String? cId;
  String? cFlag;
  String? stName;
  String? stCode;
  String? stId;
  int? stOrder;
  int? noTable;
  int? noDraw;
  int? noScorers;
  int? noTeamStats;
  int? noTracker;
  List<String>? countryCodes;
  int? highlighted;
  int? isPopular;
  List<Matches>? matches;

  MatchModel(
      {this.cName,
      this.cCode,
      this.cId,
      this.cFlag,
      this.stName,
      this.stCode,
      this.stId,
      this.stOrder,
      this.noTable,
      this.noDraw,
      this.noScorers,
      this.noTeamStats,
      this.noTracker,
      this.countryCodes,
      this.highlighted,
      this.isPopular,
      this.matches});

  MatchModel.fromJson(Map<String, dynamic> json) {
    cName = json['c_name'];
    cCode = json['c_code'];
    cId = json['c_id'];
    cFlag = json['c_flag'];
    stName = json['st_name'];
    stCode = json['st_code'];
    stId = json['st_id'];
    stOrder = json['st_order'];
    noTable = json['noTable'];
    noDraw = json['noDraw'];
    noScorers = json['noScorers'];
    noTeamStats = json['noTeamStats'];
    noTracker = json['noTracker'];
    countryCodes = json['countryCodes'].cast<String>();
    highlighted = json['highlighted'];
    isPopular = json['isPopular'];
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['c_name'] = cName;
    data['c_code'] = cCode;
    data['c_id'] = cId;
    data['c_flag'] = cFlag;
    data['st_name'] = stName;
    data['st_code'] = stCode;
    data['st_id'] = stId;
    data['st_order'] = stOrder;
    data['noTable'] = noTable;
    data['noDraw'] = noDraw;
    data['noScorers'] = noScorers;
    data['noTeamStats'] = noTeamStats;
    data['noTracker'] = noTracker;
    data['countryCodes'] = countryCodes;
    data['highlighted'] = highlighted;
    data['isPopular'] = isPopular;
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matches {
  int? pid;
  int? sId;
  String? sCode;
  String? cId;
  String? cName;
  String? cFlag;
  String? cCode;
  String? stId;
  String? stName;
  int? stGender;
  String? stCode;
  int? format;
  String? id;
  List<Pids>? pids;
  int? ut;
  String? statusText;
  int? status;
  int? pStatus;
  int? oStatus;
  int? poStatus;
  int? elapsedT;
  String? round;
  int? start;
  int? cov;
  List<int>? score;
  List<int>? ftScore;
  int? highlighted;
  int? canEndWithDraw;
  String? season;
  int? noTable;
  int? noScorers;
  List<Teams>? teams;

  Matches(
      {this.pid,
      this.sId,
      this.sCode,
      this.cId,
      this.cName,
      this.cFlag,
      this.cCode,
      this.stId,
      this.stName,
      this.stGender,
      this.stCode,
      this.format,
      this.id,
      this.pids,
      this.ut,
        this.statusText,
      this.status,
      this.pStatus,
      this.oStatus,
      this.poStatus,
      this.elapsedT,
      this.round,
      this.start,
      this.cov,
      this.score,
      this.ftScore,
      this.highlighted,
      this.canEndWithDraw,
      this.season,
      this.noTable,
      this.noScorers,
      this.teams});

  Matches.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    sId = json['s_id'];
    sCode = json['s_code'];
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    cCode = json['c_code'];
    stId = json['st_id'];
    stName = json['st_name'];
    stGender = json['st_gender'];
    stCode = json['st_code'];
    format = json['format'];
    id = json['id'];
    if (json['pids'] != null) {
      pids = <Pids>[];
      json['pids'].forEach((v) {
        pids!.add(Pids.fromJson(v));
      });
    }
    ut = json['ut'];
    statusText = json['status_txt'];
    status = json['status'];
    pStatus = json['p_status'];
    oStatus = json['o_status'];
    poStatus = json['po_status'];
    elapsedT = json['elapsed_t'];
    round = json['round'];
    start = json['start'];
    cov = json['cov'];
    score = json['score'].cast<int>();
    ftScore = json['ft_score'].cast<int>();
    highlighted = json['highlighted'];
    canEndWithDraw = json['can_end_with_draw'];
    season = json['season'];
    noTable = json['noTable'];
    noScorers = json['noScorers'];
    if (json['teams'] != null) {
      teams = <Teams>[];
      json['teams'].forEach((v) {
        teams!.add(Teams.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pid'] = pid;
    data['s_id'] = sId;
    data['s_code'] = sCode;
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_flag'] = cFlag;
    data['c_code'] = cCode;
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_gender'] = stGender;
    data['st_code'] = stCode;
    data['format'] = format;
    data['id'] = id;
    if (pids != null) {
      data['pids'] = pids!.map((v) => v.toJson()).toList();
    }
    data['ut'] = ut;
    data['status_txt'] = statusText;
    data['status'] = status;
    data['p_status'] = pStatus;
    data['o_status'] = oStatus;
    data['po_status'] = poStatus;
    data['elapsed_t'] = elapsedT;
    data['round'] = round;
    data['start'] = start;
    data['cov'] = cov;
    data['score'] = score;
    data['ft_score'] = ftScore;
    data['highlighted'] = highlighted;
    data['can_end_with_draw'] = canEndWithDraw;
    data['season'] = season;
    data['noTable'] = noTable;
    data['noScorers'] = noScorers;
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pids {
  int? pid;
  String? id;

  Pids({this.pid, this.id});

  Pids.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pid'] = pid;
    data['id'] = id;
    return data;
  }
}

class Teams {
  String? id;
  String? name;
  int? gender;
  String? cid;
  String? cname;
  String? cflag;
  int? pos;
  int? idx;
  int? kn;
  int? ptrn;
  int? assists;
  int? goals;
  int? ownGoals;
  int? red;
  int? yellow;
  int? i2ndYellow;

  Teams(
      {this.id,
      this.name,
      this.gender,
      this.cid,
      this.cname,
      this.cflag,
      this.pos,
      this.idx,
      this.kn,
      this.ptrn,
      this.assists,
      this.goals,
      this.ownGoals,
      this.red,
      this.yellow,
      this.i2ndYellow});

  Teams.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    gender = json['gender'];
    cid = json['cid'];
    cname = json['cname'];
    cflag = json['cflag'];
    pos = json['pos'];
    idx = json['idx'];
    kn = json['kn'];
    ptrn = json['ptrn'];
    assists = json['assists'];
    goals = json['goals'];
    ownGoals = json['own_goals'];
    red = json['red'];
    yellow = json['yellow'];
    i2ndYellow = json['2nd_yellow'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['gender'] = gender;
    data['cid'] = cid;
    data['cname'] = cname;
    data['cflag'] = cflag;
    data['pos'] = pos;
    data['idx'] = idx;
    data['kn'] = kn;
    data['ptrn'] = ptrn;
    data['assists'] = assists;
    data['goals'] = goals;
    data['own_goals'] = ownGoals;
    data['red'] = red;
    data['yellow'] = yellow;
    data['2nd_yellow'] = i2ndYellow;
    return data;
  }
}
