class MatchModel {
  List<Matches>? followingList;
  List<Matches>? matches;
  List<Matches>? liveMatches;

  MatchModel({this.followingList, this.matches, this.liveMatches});

  MatchModel.fromJson(Map<String, dynamic> json) {
    if (json['following_list'] != null) {
      followingList = <Matches>[];
      json['following_list'].forEach((v) {
        followingList!.add(Matches.fromJson(v));
      });
    }
    if (json['matches'] != null) {
      matches = <Matches>[];
      json['matches'].forEach((v) {
        matches!.add(Matches.fromJson(v));
      });
    }
    if (json['live_matches'] != null) {
      liveMatches = <Matches>[];
      json['live_matches'].forEach((v) {
        liveMatches!.add(Matches.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (followingList != null) {
      data['following_list'] = followingList!.map((v) => v.toJson()).toList();
    }
    if (matches != null) {
      data['matches'] = matches!.map((v) => v.toJson()).toList();
    }
    if (liveMatches != null) {
      data['live_matches'] = liveMatches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Matches {
  int? seasonId;
  Tournament? tournament;
  int? type;
  int? iId;
  AwayScore? awayScore;
  AwayScore? homeScore;
  League? awayTeam;
  League? homeTeam;
  Season? season;
  int? startTimestamp;
  Status? status;
  Time? time;
  int? lastUpdated;

  Matches(
      {this.seasonId,
      this.tournament,
      this.type,
      this.iId,
      this.awayScore,
      this.homeScore,
      this.awayTeam,
      this.homeTeam,
      this.season,
      this.startTimestamp,
      this.status,
      this.time,
      this.lastUpdated});

  Matches.fromJson(Map<String, dynamic> json) {
    seasonId = json['season_id'];
    tournament = json['tournament'] != null
        ? Tournament.fromJson(json['tournament'])
        : null;
    type = json['type'];
    iId = json['_id'];
    awayScore = json['awayScore'] != null
        ? AwayScore.fromJson(json['awayScore'])
        : null;
    homeScore = json['homeScore'] != null
        ? AwayScore.fromJson(json['homeScore'])
        : null;
    awayTeam =
        json['awayTeam'] != null ? League.fromJson(json['awayTeam']) : null;
    homeTeam =
        json['homeTeam'] != null ? League.fromJson(json['homeTeam']) : null;
    season = json['season'] != null ? Season.fromJson(json['season']) : null;
    startTimestamp = json['startTimestamp'];
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    time = json['time'] != null ? Time.fromJson(json['time']) : null;
    lastUpdated = json['lastUpdated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['season_id'] = seasonId;
    if (tournament != null) {
      data['tournament'] = tournament!.toJson();
    }
    data['type'] = type;
    data['_id'] = iId;
    if (awayScore != null) {
      data['awayScore'] = awayScore!.toJson();
    }
    if (homeScore != null) {
      data['homeScore'] = homeScore!.toJson();
    }
    if (awayTeam != null) {
      data['awayTeam'] = awayTeam!.toJson();
    }
    if (homeTeam != null) {
      data['homeTeam'] = homeTeam!.toJson();
    }
    if (season != null) {
      data['season'] = season!.toJson();
    }
    data['startTimestamp'] = startTimestamp;
    if (status != null) {
      data['status'] = status!.toJson();
    }
    if (time != null) {
      data['time'] = time!.toJson();
    }
    data['lastUpdated'] = lastUpdated;
    return data;
  }
}

class Tournament {
  int? iId;
  String? name;
  Country? country;
  League? league;

  Tournament({this.iId, this.name, this.country, this.league});

  Tournament.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    name = json['name'];
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
    league = json['league'] != null ? League.fromJson(json['league']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = iId;
    data['name'] = name;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    if (league != null) {
      data['league'] = league!.toJson();
    }
    return data;
  }
}

class Country {
  String? sId;
  String? name;

  Country({this.sId, this.name});

  Country.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    return data;
  }
}

class League {
  int? iId;
  String? name;
  String? primaryColorHex;
  String? secondaryColorHex;
  Country? country;

  League(
      {this.iId,
      this.name,
      this.primaryColorHex,
      this.secondaryColorHex,
      this.country});

  League.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    name = json['name'];
    primaryColorHex = json['primaryColorHex'];
    secondaryColorHex = json['secondaryColorHex'];
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = iId;
    data['name'] = name;
    data['primaryColorHex'] = primaryColorHex;
    data['secondaryColorHex'] = secondaryColorHex;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    return data;
  }
}

class AwayScore {
  int? display;
  int? period1;
  int? period2;
  int? normaltime;
  int? current;
  int? extra1;
  int? extra2;
  int? overtime;
  int? penalties;

  AwayScore(
      {this.display,
      this.period1,
      this.period2,
      this.normaltime,
      this.current,
      this.extra1,
      this.extra2,
      this.overtime,
      this.penalties});

  AwayScore.fromJson(Map<String, dynamic> json) {
    display = json['display'];
    period1 = json['period1'];
    period2 = json['period2'];
    normaltime = json['normaltime'];
    current = json['current'];
    extra1 = json['extra1'];
    extra2 = json['extra2'];
    overtime = json['overtime'];
    penalties = json['penalties'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['display'] = display;
    data['period1'] = period1;
    data['period2'] = period2;
    data['normaltime'] = normaltime;
    data['current'] = current;
    data['extra1'] = extra1;
    data['extra2'] = extra2;
    data['overtime'] = overtime;
    data['penalties'] = penalties;
    return data;
  }
}

class Season {
  int? iId;
  String? name;

  Season({this.iId, this.name});

  Season.fromJson(Map<String, dynamic> json) {
    iId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = iId;
    data['name'] = name;
    return data;
  }
}

class Status {
  String? type;
  int? code;
  String? description;

  Status({this.type, this.code, this.description});

  Status.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    code = json['code'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['code'] = code;
    data['description'] = description;
    return data;
  }
}

class Time {
  int? currentPeriodStartTimestamp;
  int? injuryTime1;
  int? injuryTime2;
  int? period1StartTimestamp;
  int? period2StartTimestamp;
  int? initial;
  int? extra;
  int? max;
  int? extra1StartTimestamp;
  int? extra2StartTimestamp;

  Time(
      {this.currentPeriodStartTimestamp,
      this.injuryTime1,
      this.injuryTime2,
      this.period1StartTimestamp,
      this.period2StartTimestamp,
      this.initial,
      this.extra,
      this.max,
      this.extra1StartTimestamp,
      this.extra2StartTimestamp});

  Time.fromJson(Map<String, dynamic> json) {
    currentPeriodStartTimestamp = json['currentPeriodStartTimestamp'];
    injuryTime1 = json['injuryTime1'];
    injuryTime2 = json['injuryTime2'];
    period1StartTimestamp = json['period1StartTimestamp'];
    period2StartTimestamp = json['period2StartTimestamp'];
    initial = json['initial'];
    extra = json['extra'];
    max = json['max'];
    extra1StartTimestamp = json['extra1StartTimestamp'];
    extra2StartTimestamp = json['extra2StartTimestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currentPeriodStartTimestamp'] = currentPeriodStartTimestamp;
    data['injuryTime1'] = injuryTime1;
    data['injuryTime2'] = injuryTime2;
    data['period1StartTimestamp'] = period1StartTimestamp;
    data['period2StartTimestamp'] = period2StartTimestamp;
    data['initial'] = initial;
    data['extra'] = extra;
    data['max'] = max;
    data['extra1StartTimestamp'] = extra1StartTimestamp;
    data['extra2StartTimestamp'] = extra2StartTimestamp;
    return data;
  }
}
