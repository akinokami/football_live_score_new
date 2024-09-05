// To parse this JSON data, do
//
//     final matchDetailModel = matchDetailModelFromJson(jsonString);

import 'dart:convert';

MatchDetailModel matchDetailModelFromJson(String str) => MatchDetailModel.fromJson(json.decode(str));

String matchDetailModelToJson(MatchDetailModel data) => json.encode(data.toJson());

class MatchDetailModel {
  int? pid;
  int? sId;
  String? sCode;
  String? cId;
  String? cName;
  String? cFlag;
  String? stId;
  String? stName;
  int? stGender;
  int? format;
  String? id;
  List<Pid>? pids;
  int? ut;
  int? status;
  int? oStatus;
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
  List<Team>? teams;

  MatchDetailModel({
    this.pid,
    this.sId,
    this.sCode,
    this.cId,
    this.cName,
    this.cFlag,
    this.stId,
    this.stName,
    this.stGender,
    this.format,
    this.id,
    this.pids,
    this.ut,
    this.status,
    this.oStatus,
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
    this.teams,
  });

  factory MatchDetailModel.fromJson(Map<String, dynamic> json) => MatchDetailModel(
    pid: json["pid"],
    sId: json["s_id"],
    sCode: json["s_code"],
    cId: json["c_id"],
    cName: json["c_name"],
    cFlag: json["c_flag"],
    stId: json["st_id"],
    stName: json["st_name"],
    stGender: json["st_gender"],
    format: json["format"],
    id: json["id"],
    pids: json["pids"] == null ? [] : List<Pid>.from(json["pids"]!.map((x) => Pid.fromJson(x))),
    ut: json["ut"],
    status: json["status"],
    oStatus: json["o_status"],
    elapsedT: json["elapsed_t"],
    round: json["round"],
    start: json["start"],
    cov: json["cov"],
    score: json["score"] == null ? [] : List<int>.from(json["score"]!.map((x) => x)),
    ftScore: json["ft_score"] == null ? [] : List<int>.from(json["ft_score"]!.map((x) => x)),
    highlighted: json["highlighted"],
    canEndWithDraw: json["can_end_with_draw"],
    season: json["season"],
    noTable: json["noTable"],
    noScorers: json["noScorers"],
    teams: json["teams"] == null ? [] : List<Team>.from(json["teams"]!.map((x) => Team.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "pid": pid,
    "s_id": sId,
    "s_code": sCode,
    "c_id": cId,
    "c_name": cName,
    "c_flag": cFlag,
    "st_id": stId,
    "st_name": stName,
    "st_gender": stGender,
    "format": format,
    "id": id,
    "pids": pids == null ? [] : List<dynamic>.from(pids!.map((x) => x.toJson())),
    "ut": ut,
    "status": status,
    "o_status": oStatus,
    "elapsed_t": elapsedT,
    "round": round,
    "start": start,
    "cov": cov,
    "score": score == null ? [] : List<dynamic>.from(score!.map((x) => x)),
    "ft_score": ftScore == null ? [] : List<dynamic>.from(ftScore!.map((x) => x)),
    "highlighted": highlighted,
    "can_end_with_draw": canEndWithDraw,
    "season": season,
    "noTable": noTable,
    "noScorers": noScorers,
    "teams": teams == null ? [] : List<dynamic>.from(teams!.map((x) => x.toJson())),
  };
}

class Pid {
  int? pid;
  String? id;

  Pid({
    this.pid,
    this.id,
  });

  factory Pid.fromJson(Map<String, dynamic> json) => Pid(
    pid: json["pid"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "pid": pid,
    "id": id,
  };
}

class Team {
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
  int? the2NdYellow;

  Team({
    this.id,
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
    this.the2NdYellow,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json["id"],
    name: json["name"],
    gender: json["gender"],
    cid: json["cid"],
    cname: json["cname"],
    cflag: json["cflag"],
    pos: json["pos"],
    idx: json["idx"],
    kn: json["kn"],
    ptrn: json["ptrn"],
    assists: json["assists"],
    goals: json["goals"],
    ownGoals: json["own_goals"],
    red: json["red"],
    yellow: json["yellow"],
    the2NdYellow: json["2nd_yellow"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "gender": gender,
    "cid": cid,
    "cname": cname,
    "cflag": cflag,
    "pos": pos,
    "idx": idx,
    "kn": kn,
    "ptrn": ptrn,
    "assists": assists,
    "goals": goals,
    "own_goals": ownGoals,
    "red": red,
    "yellow": yellow,
    "2nd_yellow": the2NdYellow,
  };
}
