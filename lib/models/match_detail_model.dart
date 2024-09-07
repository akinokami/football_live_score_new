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
  List<Pids>? pids;
  int? ut;
  String? statusTxt;
  int? status;
  int? pStatus;
  int? oStatus;
  int? poStatus;
  int? elapsed;
  int? elapsedI;
  int? play;
  int? elapsedT;
  String? round;
  int? start;
  int? aStart;
  int? aEnd;
  int? cov;
  List<int>? score;
  List<int>? htScore;
  List<int>? ftScore;
  int? highlighted;
  int? hasPdata;
  int? canEndWithDraw;
  String? season;
  int? noTable;
  int? noScorers;
  List<Teams>? teams;
  int? hasStats;
  List<StatsByScope>? statsByScope;
  List<Stats>? stats;
  int? hasVenue;
  Venue? venue;
  int? hasIncs;
  Map<String, dynamic>? incs;
  int? hasSubs;
  int? hasLineups;
  List<Lineup>? lineup;
  int? lineupOk;
  int? lineupUpdate;
  int? lineupConfirmed;

  MatchDetailModel(
      {this.pid,
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
      this.statusTxt,
      this.status,
      this.pStatus,
      this.oStatus,
      this.poStatus,
      this.elapsed,
      this.elapsedI,
      this.play,
      this.elapsedT,
      this.round,
      this.start,
      this.aStart,
      this.aEnd,
      this.cov,
      this.score,
      this.htScore,
      this.ftScore,
      this.highlighted,
      this.hasPdata,
      this.canEndWithDraw,
      this.season,
      this.noTable,
      this.noScorers,
      this.teams,
      this.hasStats,
      this.statsByScope,
      this.stats,
      this.hasVenue,
      this.venue,
      this.hasIncs,
      this.incs,
      this.hasSubs,
      this.hasLineups,
      this.lineup,
      this.lineupOk,
      this.lineupUpdate,
      this.lineupConfirmed});

  MatchDetailModel.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    sId = json['s_id'];
    sCode = json['s_code'];
    cId = json['c_id'];
    cName = json['c_name'];
    cFlag = json['c_flag'];
    stId = json['st_id'];
    stName = json['st_name'];
    stGender = json['st_gender'];
    format = json['format'];
    id = json['id'];
    if (json['pids'] != null) {
      pids = <Pids>[];
      json['pids'].forEach((v) {
        pids!.add(Pids.fromJson(v));
      });
    }
    ut = json['ut'];
    statusTxt = json['status_txt'];
    status = json['status'];
    pStatus = json['p_status'];
    oStatus = json['o_status'];
    poStatus = json['po_status'];
    elapsed = json['elapsed'];
    elapsedI = json['elapsed_i'];
    play = json['play'];
    elapsedT = json['elapsed_t'];
    round = json['round'];
    start = json['start'];
    aStart = json['a_start'];
    aEnd = json['a_end'];
    cov = json['cov'];
    score = json['score'] != null ? json['score'].cast<int>() : [];
    htScore = json['ht_score'] != null ? json['ht_score'].cast<int>() : [];
    ftScore = json['ft_score'] != null ? json['ft_score'].cast<int>() : [];
    highlighted = json['highlighted'];
    hasPdata = json['has_pdata'];
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
    hasStats = json['has_stats'];
    if (json['stats_by_scope'] != null) {
      statsByScope = <StatsByScope>[];
      json['stats_by_scope'].forEach((v) {
        statsByScope!.add(StatsByScope.fromJson(v));
      });
    }
    if (json['stats'] != null) {
      stats = <Stats>[];
      json['stats'].forEach((v) {
        stats!.add(Stats.fromJson(v));
      });
    }
    hasVenue = json['has_venue'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    hasIncs = json['has_incs'];
    incs = json['incs'];
    hasSubs = json['has_subs'];
    hasLineups = json['has_lineups'];
    if (json['lineup'] != null) {
      lineup = <Lineup>[];
      json['lineup'].forEach((v) {
        lineup!.add(Lineup.fromJson(v));
      });
    }
    lineupOk = json['lineup_ok'];
    lineupUpdate = json['lineup_update'];
    lineupConfirmed = json['lineup_confirmed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pid'] = pid;
    data['s_id'] = sId;
    data['s_code'] = sCode;
    data['c_id'] = cId;
    data['c_name'] = cName;
    data['c_flag'] = cFlag;
    data['st_id'] = stId;
    data['st_name'] = stName;
    data['st_gender'] = stGender;
    data['format'] = format;
    data['id'] = id;
    if (pids != null) {
      data['pids'] = pids!.map((v) => v.toJson()).toList();
    }
    data['ut'] = ut;
    data['status_txt'] = statusTxt;
    data['status'] = status;
    data['p_status'] = pStatus;
    data['o_status'] = oStatus;
    data['po_status'] = poStatus;
    data['elapsed'] = elapsed;
    data['elapsed_i'] = elapsedI;
    data['play'] = play;
    data['elapsed_t'] = elapsedT;
    data['round'] = round;
    data['start'] = start;
    data['a_start'] = aStart;
    data['a_end'] = aEnd;
    data['cov'] = cov;
    data['score'] = score;
    data['ht_score'] = htScore;
    data['ft_score'] = ftScore;
    data['highlighted'] = highlighted;
    data['has_pdata'] = hasPdata;
    data['can_end_with_draw'] = canEndWithDraw;
    data['season'] = season;
    data['noTable'] = noTable;
    data['noScorers'] = noScorers;
    if (teams != null) {
      data['teams'] = teams!.map((v) => v.toJson()).toList();
    }
    data['has_stats'] = hasStats;
    if (statsByScope != null) {
      data['stats_by_scope'] = statsByScope!.map((v) => v.toJson()).toList();
    }
    if (stats != null) {
      data['stats'] = stats!.map((v) => v.toJson()).toList();
    }
    data['has_venue'] = hasVenue;
    if (venue != null) {
      data['venue'] = venue!.toJson();
    }
    data['has_incs'] = hasIncs;
    data['has_subs'] = hasSubs;
    data['has_lineups'] = hasLineups;
    if (lineup != null) {
      data['lineup'] = lineup!.map((v) => v.toJson()).toList();
    }
    data['lineup_ok'] = lineupOk;
    data['lineup_update'] = lineupUpdate;
    data['lineup_confirmed'] = lineupConfirmed;
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

class StatsByScope {
  List<EventModel>? fULLEVENT;
  List<EventModel>? l1STHALF;
  List<EventModel>? l2NDHALF;

  StatsByScope({this.fULLEVENT, this.l1STHALF, this.l2NDHALF});

  StatsByScope.fromJson(Map<String, dynamic> json) {
    if (json['FULL_EVENT'] != null) {
      fULLEVENT = <EventModel>[];
      json['FULL_EVENT'].forEach((v) {
        fULLEVENT!.add(EventModel.fromJson(v));
      });
    }
    if (json['_1ST_HALF'] != null) {
      l1STHALF = <EventModel>[];
      json['_1ST_HALF'].forEach((v) {
        l1STHALF!.add(EventModel.fromJson(v));
      });
    }
    if (json['_2ND_HALF'] != null) {
      l2NDHALF = <EventModel>[];
      json['_2ND_HALF'].forEach((v) {
        l2NDHALF!.add(EventModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (fULLEVENT != null) {
      data['FULL_EVENT'] = fULLEVENT!.map((v) => v.toJson()).toList();
    }
    if (l1STHALF != null) {
      data['_1ST_HALF'] = l1STHALF!.map((v) => v.toJson()).toList();
    }
    if (l2NDHALF != null) {
      data['_2ND_HALF'] = l2NDHALF!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EventModel {
  int? pos;
  int? idx;
  int? fouls;
  int? throwIn;
  int? offsides;
  int? possession;
  int? corners;
  int? yellow;
  int? shotsOn;
  int? shotsOff;

  EventModel(
      {this.pos,
      this.idx,
      this.fouls,
      this.throwIn,
      this.offsides,
      this.possession,
      this.corners,
      this.yellow,
      this.shotsOn,
      this.shotsOff});

  EventModel.fromJson(Map<String, dynamic> json) {
    pos = json['pos'];
    idx = json['idx'];
    fouls = json['fouls'];
    throwIn = json['throw_in'];
    offsides = json['offsides'];
    possession = json['possession'];
    corners = json['corners'];
    yellow = json['yellow'];
    shotsOn = json['shots_on'];
    shotsOff = json['shots_off'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pos'] = pos;
    data['idx'] = idx;
    data['fouls'] = fouls;
    data['throw_in'] = throwIn;
    data['offsides'] = offsides;
    data['possession'] = possession;
    data['corners'] = corners;
    data['yellow'] = yellow;
    data['shots_on'] = shotsOn;
    data['shots_off'] = shotsOff;
    return data;
  }
}

class Venue {
  String? name;
  String? city;
  String? id;
  String? long;
  String? lat;
  String? capacity;
  // List<Null>? battingReport;
  // List<Null>? bowlingReport;

  Venue({
    this.name,
    this.city,
    this.id,
    this.long,
    this.lat,
    this.capacity,
    // this.battingReport,
    // this.bowlingReport
  });

  Venue.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    city = json['city'];
    id = json['id'];
    long = json['long'];
    lat = json['lat'];
    capacity = json['capacity'];
    // if (json['batting_report'] != null) {
    //   battingReport = <Null>[];
    //   json['batting_report'].forEach((v) {
    //     battingReport!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['bowling_report'] != null) {
    //   bowlingReport = <Null>[];
    //   json['bowling_report'].forEach((v) {
    //     bowlingReport!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['city'] = city;
    data['id'] = id;
    data['long'] = long;
    data['lat'] = lat;
    data['capacity'] = capacity;
    // if (this.battingReport != null) {
    //   data['batting_report'] =
    //       this.battingReport!.map((v) => v.toJson()).toList();
    // }
    // if (this.bowlingReport != null) {
    //   data['bowling_report'] =
    //       this.bowlingReport!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Lineup {
  int? pos;
  List<LineUpModel>? starting;
  List<LineUpModel>? substitutes;
  List<LineUpModel>? injured;
  List<LineUpModel>? suspended;
  List<LineUpModel>? squad;
  List<LineUpModel>? coaches;

  Lineup(
      {this.pos,
      this.starting,
      this.substitutes,
      this.injured,
      this.suspended,
      this.squad,
      this.coaches});

  Lineup.fromJson(Map<String, dynamic> json) {
    pos = json['pos'];
    if (json['starting'] != null) {
      starting = <LineUpModel>[];
      json['starting'].forEach((v) {
        starting!.add(LineUpModel.fromJson(v));
      });
    }
    if (json['substitutes'] != null) {
      substitutes = <LineUpModel>[];
      json['substitutes'].forEach((v) {
        substitutes!.add(LineUpModel.fromJson(v));
      });
    }
    if (json['injured'] != null) {
      injured = <LineUpModel>[];
      json['injured'].forEach((v) {
        injured!.add(LineUpModel.fromJson(v));
      });
    }
    if (json['suspended'] != null) {
      suspended = <LineUpModel>[];
      json['suspended'].forEach((v) {
        suspended!.add(LineUpModel.fromJson(v));
      });
    }
    if (json['squad'] != null) {
      squad = <LineUpModel>[];
      json['squad'].forEach((v) {
        squad!.add(LineUpModel.fromJson(v));
      });
    }
    if (json['coaches'] != null) {
      coaches = <LineUpModel>[];
      json['coaches'].forEach((v) {
        coaches!.add(LineUpModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pos'] = pos;
    if (starting != null) {
      data['starting'] = starting!.map((v) => v.toJson()).toList();
    }
    if (substitutes != null) {
      data['substitutes'] = substitutes!.map((v) => v.toJson()).toList();
    }
    if (injured != null) {
      data['injured'] = injured!.map((v) => v.toJson()).toList();
    }
    if (suspended != null) {
      data['suspended'] = suspended!.map((v) => v.toJson()).toList();
    }
    if (squad != null) {
      data['squad'] = squad!.map((v) => v.toJson()).toList();
    }
    if (coaches != null) {
      data['coaches'] = coaches!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LineUpModel {
  String? id;
  String? name;
  int? pos;
  int? aPos;
  int? eIn;
  int? eOut;
  int? jNum;
  int? kn;

  LineUpModel(
      {this.id,
      this.name,
      this.pos,
      this.aPos,
      this.eIn,
      this.eOut,
      this.jNum,
      this.kn});

  LineUpModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    pos = json['pos'];
    aPos = json['a_pos'];
    eIn = json['e_in'];
    eOut = json['e_out'];
    jNum = json['j_num'];
    kn = json['kn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['pos'] = pos;
    data['a_pos'] = aPos;
    data['e_in'] = eIn;
    data['e_out'] = eOut;
    data['j_num'] = jNum;
    data['kn'] = kn;
    return data;
  }
}

class Stats {
  int? pos;
  int? idx;
  int? fouls;
  int? throwIn;
  int? offsides;
  int? possession;
  int? corners;
  int? yellow;
  int? shotsOn;
  int? shotsOff;

  Stats(
      {this.pos,
      this.idx,
      this.fouls,
      this.throwIn,
      this.offsides,
      this.possession,
      this.corners,
      this.yellow,
      this.shotsOn,
      this.shotsOff});

  Stats.fromJson(Map<String, dynamic> json) {
    pos = json['pos'];
    idx = json['idx'];
    fouls = json['fouls'];
    throwIn = json['throw_in'];
    offsides = json['offsides'];
    possession = json['possession'];
    corners = json['corners'];
    yellow = json['yellow'];
    shotsOn = json['shots_on'];
    shotsOff = json['shots_off'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pos'] = pos;
    data['idx'] = idx;
    data['fouls'] = fouls;
    data['throw_in'] = throwIn;
    data['offsides'] = offsides;
    data['possession'] = possession;
    data['corners'] = corners;
    data['yellow'] = yellow;
    data['shots_on'] = shotsOn;
    data['shots_off'] = shotsOff;
    return data;
  }
}

class Incs {
  int? min;
  String? id;
  int? pos;
  String? plId;
  int? plNum;
  String? plName;
  String? plSName;
  int? plNumO;
  int? type;
  List<int>? score;
  List<Assists>? assists;

  Incs(
      {this.min,
      this.id,
      this.pos,
      this.plId,
      this.plNum,
      this.plName,
      this.plSName,
      this.plNumO,
      this.type,
      this.score,
      this.assists});

  Incs.fromJson(Map<String, dynamic> json) {
    min = json['min'];
    id = json['id'];
    pos = json['pos'];
    plId = json['pl_id'];
    plNum = json['pl_num'];
    plName = json['pl_name'];
    plSName = json['pl_s_name'];
    plNumO = json['pl_num_o'];
    type = json['type'];
    score = json['score'] != null ? json['score'].cast<int>() : [];
    if (json['assists'] != null) {
      assists = <Assists>[];
      json['assists'].forEach((v) {
        assists!.add(Assists.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['min'] = min;
    data['id'] = id;
    data['pos'] = pos;
    data['pl_id'] = plId;
    data['pl_num'] = plNum;
    data['pl_name'] = plName;
    data['pl_s_name'] = plSName;
    data['pl_num_o'] = plNumO;
    data['type'] = type;
    data['score'] = score;
    if (assists != null) {
      data['assists'] = assists!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Assists {
  String? id;
  String? plName;

  Assists({this.id, this.plName});

  Assists.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    plName = json['pl_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['pl_name'] = plName;
    return data;
  }
}
