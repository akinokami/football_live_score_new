// To parse this JSON data, do
//
//     final matchDetailModel = matchDetailModelFromJson(jsonString);

import 'dart:convert';

MatchDetailModel matchDetailModelFromJson(String str) => MatchDetailModel.fromJson(json.decode(str));

String matchDetailModelToJson(MatchDetailModel data) => json.encode(data.toJson());

class MatchDetailModel {
  List<Overview>? overview;
  H2H? h2H;
  Lineup? lineup;
  dynamic cuptree;
  Standings? standings;
  MatchStats? matchStats;
  List<PlayersStatistic>? playersStatistics;
  Match? match;
  dynamic liveMatch;

  MatchDetailModel({
    this.overview,
    this.h2H,
    this.lineup,
    this.cuptree,
    this.standings,
    this.matchStats,
    this.playersStatistics,
    this.match,
    this.liveMatch,
  });

  factory MatchDetailModel.fromJson(Map<String, dynamic> json) => MatchDetailModel(
    overview: json["overview"] == null ? [] : List<Overview>.from(json["overview"]!.map((x) => Overview.fromJson(x))),
    h2H: json["h2h"] == null ? null : H2H.fromJson(json["h2h"]),
    lineup: json["lineup"] == null ? null : Lineup.fromJson(json["lineup"]),
    cuptree: json["cuptree"],
    standings: json["standings"] == null ? null : Standings.fromJson(json["standings"]),
    matchStats: json["match_stats"] == null ? null : MatchStats.fromJson(json["match_stats"]),
    playersStatistics: json["players_statistics"] == null ? [] : List<PlayersStatistic>.from(json["players_statistics"]!.map((x) => PlayersStatistic.fromJson(x))),
    match: json["match"] == null ? null : Match.fromJson(json["match"]),
    liveMatch: json["liveMatch"],
  );

  Map<String, dynamic> toJson() => {
    "overview": overview == null ? [] : List<dynamic>.from(overview!.map((x) => x.toJson())),
    "h2h": h2H?.toJson(),
    "lineup": lineup?.toJson(),
    "cuptree": cuptree,
    "standings": standings?.toJson(),
    "match_stats": matchStats?.toJson(),
    "players_statistics": playersStatistics == null ? [] : List<dynamic>.from(playersStatistics!.map((x) => x.toJson())),
    "match": match?.toJson(),
    "liveMatch": liveMatch,
  };
}

class H2H {
  LastMatchesScores? lastMatchesScores;
  List<Match>? last5MatchesBetween;
  StandData? standData;

  H2H({
    this.lastMatchesScores,
    this.last5MatchesBetween,
    this.standData,
  });

  factory H2H.fromJson(Map<String, dynamic> json) => H2H(
    lastMatchesScores: json["last_matches_scores"] == null ? null : LastMatchesScores.fromJson(json["last_matches_scores"]),
    last5MatchesBetween: json["last_5_matches_between"] == null ? [] : List<Match>.from(json["last_5_matches_between"]!.map((x) => Match.fromJson(x))),
    standData: json["StandData"] == null ? null : StandData.fromJson(json["StandData"]),
  );

  Map<String, dynamic> toJson() => {
    "last_matches_scores": lastMatchesScores?.toJson(),
    "last_5_matches_between": last5MatchesBetween == null ? [] : List<dynamic>.from(last5MatchesBetween!.map((x) => x.toJson())),
    "StandData": standData?.toJson(),
  };
}

class Match {
  int? id;
  Tournament? tournament;
  Score? awayScore;
  Score? homeScore;
  int? startTimestamp;
  Time? time;
  Status? status;
  Season? season;
  AwayTeam? awayTeam;
  AwayTeam? homeTeam;
  double? value;
  AwayTeam? player;

  Match({
    this.id,
    this.tournament,
    this.awayScore,
    this.homeScore,
    this.startTimestamp,
    this.time,
    this.status,
    this.season,
    this.awayTeam,
    this.homeTeam,
    this.value,
    this.player,
  });

  factory Match.fromJson(Map<String, dynamic> json) => Match(
    id: json["_id"],
    tournament: json["tournament"] == null ? null : Tournament.fromJson(json["tournament"]),
    awayScore: json["awayScore"] == null ? null : Score.fromJson(json["awayScore"]),
    homeScore: json["homeScore"] == null ? null : Score.fromJson(json["homeScore"]),
    startTimestamp: json["startTimestamp"],
    time: json["time"] == null ? null : Time.fromJson(json["time"]),
    status: json["status"] == null ? null : Status.fromJson(json["status"]),
    season: json["season"] == null ? null : Season.fromJson(json["season"]),
    awayTeam: json["awayTeam"] == null ? null : AwayTeam.fromJson(json["awayTeam"]),
    homeTeam: json["homeTeam"] == null ? null : AwayTeam.fromJson(json["homeTeam"]),
    value: json["value"]?.toDouble(),
    player: json["player"] == null ? null : AwayTeam.fromJson(json["player"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "tournament": tournament?.toJson(),
    "awayScore": awayScore?.toJson(),
    "homeScore": homeScore?.toJson(),
    "startTimestamp": startTimestamp,
    "time": time?.toJson(),
    "status": status?.toJson(),
    "season": season?.toJson(),
    "awayTeam": awayTeam?.toJson(),
    "homeTeam": homeTeam?.toJson(),
    "value": value,
    "player": player?.toJson(),
  };
}

class Score {
  int? current;
  int? display;
  int? period1;
  int? period2;
  int? normaltime;

  Score({
    this.current,
    this.display,
    this.period1,
    this.period2,
    this.normaltime,
  });

  factory Score.fromJson(Map<String, dynamic> json) => Score(
    current: json["current"],
    display: json["display"],
    period1: json["period1"],
    period2: json["period2"],
    normaltime: json["normaltime"],
  );

  Map<String, dynamic> toJson() => {
    "current": current,
    "display": display,
    "period1": period1,
    "period2": period2,
    "normaltime": normaltime,
  };
}

class AwayTeam {
  int? id;
  String? name;
  String? primaryColorHex;
  SecondaryColorHex? secondaryColorHex;
  Country? country;
  AwayTeam? team;

  AwayTeam({
    this.id,
    this.name,
    this.primaryColorHex,
    this.secondaryColorHex,
    this.country,
    this.team,
  });

  factory AwayTeam.fromJson(Map<String, dynamic> json) => AwayTeam(
    id: json["_id"],
    name: json["name"],
    primaryColorHex: json["primaryColorHex"],
    secondaryColorHex: secondaryColorHexValues.map[json["secondaryColorHex"]]!,
    country: json["country"] == null ? null : Country.fromJson(json["country"]),
    team: json["team"] == null ? null : AwayTeam.fromJson(json["team"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "primaryColorHex": primaryColorHex,
    "secondaryColorHex": secondaryColorHexValues.reverse[secondaryColorHex],
    "country": country?.toJson(),
    "team": team?.toJson(),
  };
}

class Country {
  Id? id;
  CountryName? name;

  Country({
    this.id,
    this.name,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    id: idValues.map[json["_id"]]!,
    name: countryNameValues.map[json["name"]]!,
  );

  Map<String, dynamic> toJson() => {
    "_id": idValues.reverse[id],
    "name": countryNameValues.reverse[name],
  };
}

enum Id {
  AZ,
  BR,
  DK,
  EC,
  NULL,
  PT,
  WORLD
}

final idValues = EnumValues({
  "AZ": Id.AZ,
  "BR": Id.BR,
  "DK": Id.DK,
  "EC": Id.EC,
  "NULL": Id.NULL,
  "PT": Id.PT,
  "World": Id.WORLD
});

enum CountryName {
  AZERBAIJAN,
  BRAZIL,
  DENMARK,
  ECUADOR,
  EMPTY,
  PORTUGAL,
  WORLD
}

final countryNameValues = EnumValues({
  "Azerbaijan": CountryName.AZERBAIJAN,
  "Brazil": CountryName.BRAZIL,
  "Denmark": CountryName.DENMARK,
  "Ecuador": CountryName.ECUADOR,
  "-": CountryName.EMPTY,
  "Portugal": CountryName.PORTUGAL,
  "World": CountryName.WORLD
});

enum SecondaryColorHex {
  CC0000,
  E42_C2_C,
  E4_E648,
  EB453_C,
  F5_D230,
  FAFBF9,
  FAFCFB,
  FBFBFA,
  FBFCFC,
  FBFDFC,
  FCFCFB,
  FCFDFD,
  FDFCF6,
  FDFDFD,
  FE1_D12,
  FEF400,
  FEFDFD,
  FEFEFE,
  FF0000,
  FFFF00,
  FFFFFF
}

final secondaryColorHexValues = EnumValues({
  "#CC0000": SecondaryColorHex.CC0000,
  "#e42c2c": SecondaryColorHex.E42_C2_C,
  "#e4e648": SecondaryColorHex.E4_E648,
  "#EB453C": SecondaryColorHex.EB453_C,
  "#F5D230": SecondaryColorHex.F5_D230,
  "#fafbf9": SecondaryColorHex.FAFBF9,
  "#fafcfb": SecondaryColorHex.FAFCFB,
  "#fbfbfa": SecondaryColorHex.FBFBFA,
  "#fbfcfc": SecondaryColorHex.FBFCFC,
  "#fbfdfc": SecondaryColorHex.FBFDFC,
  "#fcfcfb": SecondaryColorHex.FCFCFB,
  "#fcfdfd": SecondaryColorHex.FCFDFD,
  "#fdfcf6": SecondaryColorHex.FDFCF6,
  "#fdfdfd": SecondaryColorHex.FDFDFD,
  "#fe1d12": SecondaryColorHex.FE1_D12,
  "#fef400": SecondaryColorHex.FEF400,
  "#fefdfd": SecondaryColorHex.FEFDFD,
  "#fefefe": SecondaryColorHex.FEFEFE,
  "#ff0000": SecondaryColorHex.FF0000,
  "#ffff00": SecondaryColorHex.FFFF00,
  "#ffffff": SecondaryColorHex.FFFFFF
});

class Season {
  int? id;
  SeasonName? name;

  Season({
    this.id,
    this.name,
  });

  factory Season.fromJson(Map<String, dynamic> json) => Season(
    id: json["_id"],
    name: seasonNameValues.map[json["name"]]!,
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": seasonNameValues.reverse[name],
  };
}

enum SeasonName {
  BRASILEIRO_SERIE_B_2024,
  BRASILEIRO_SRIE_B_2019,
  BRASILEIRO_SRIE_B_2021
}

final seasonNameValues = EnumValues({
  "Brasileiro Serie B 2024": SeasonName.BRASILEIRO_SERIE_B_2024,
  "Brasileiro Série B 2019": SeasonName.BRASILEIRO_SRIE_B_2019,
  "Brasileiro Série B 2021": SeasonName.BRASILEIRO_SRIE_B_2021
});

class Status {
  int? code;
  Description? description;
  Type? type;

  Status({
    this.code,
    this.description,
    this.type,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    code: json["code"],
    description: descriptionValues.map[json["description"]]!,
    type: typeValues.map[json["type"]]!,
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "description": descriptionValues.reverse[description],
    "type": typeValues.reverse[type],
  };
}

enum Description {
  ENDED
}

final descriptionValues = EnumValues({
  "Ended": Description.ENDED
});

enum Type {
  FINISHED
}

final typeValues = EnumValues({
  "finished": Type.FINISHED
});

class Time {
  int? injuryTime1;
  int? injuryTime2;
  int? currentPeriodStartTimestamp;

  Time({
    this.injuryTime1,
    this.injuryTime2,
    this.currentPeriodStartTimestamp,
  });

  factory Time.fromJson(Map<String, dynamic> json) => Time(
    injuryTime1: json["injuryTime1"],
    injuryTime2: json["injuryTime2"],
    currentPeriodStartTimestamp: json["currentPeriodStartTimestamp"],
  );

  Map<String, dynamic> toJson() => {
    "injuryTime1": injuryTime1,
    "injuryTime2": injuryTime2,
    "currentPeriodStartTimestamp": currentPeriodStartTimestamp,
  };
}

class Tournament {
  int? id;
  TournamentName? name;
  AwayTeam? league;
  Country? country;

  Tournament({
    this.id,
    this.name,
    this.league,
    this.country,
  });

  factory Tournament.fromJson(Map<String, dynamic> json) => Tournament(
    id: json["_id"],
    name: tournamentNameValues.map[json["name"]]!,
    league: json["league"] == null ? null : AwayTeam.fromJson(json["league"]),
    country: json["country"] == null ? null : Country.fromJson(json["country"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": tournamentNameValues.reverse[name],
    "league": league?.toJson(),
    "country": country?.toJson(),
  };
}

enum TournamentName {
  BRASILEIRO_SRIE_B
}

final tournamentNameValues = EnumValues({
  "Brasileirão Série B": TournamentName.BRASILEIRO_SRIE_B
});

class LastMatchesScores {
  int? home;
  int? draw;
  int? away;
  int? total;

  LastMatchesScores({
    this.home,
    this.draw,
    this.away,
    this.total,
  });

  factory LastMatchesScores.fromJson(Map<String, dynamic> json) => LastMatchesScores(
    home: json["home"],
    draw: json["draw"],
    away: json["away"],
    total: json["Total"],
  );

  Map<String, dynamic> toJson() => {
    "home": home,
    "draw": draw,
    "away": away,
    "Total": total,
  };
}

class StandData {
  AwayTeam? homeLeague;
  int? homeSeasonId;
  AwayTeam? awayLeague;
  int? awaySeasonId;
  List<StandDataDatum>? data;

  StandData({
    this.homeLeague,
    this.homeSeasonId,
    this.awayLeague,
    this.awaySeasonId,
    this.data,
  });

  factory StandData.fromJson(Map<String, dynamic> json) => StandData(
    homeLeague: json["home_league"] == null ? null : AwayTeam.fromJson(json["home_league"]),
    homeSeasonId: json["home_season_id"],
    awayLeague: json["away_league"] == null ? null : AwayTeam.fromJson(json["away_league"]),
    awaySeasonId: json["away_season_id"],
    data: json["data"] == null ? [] : List<StandDataDatum>.from(json["data"]!.map((x) => StandDataDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "home_league": homeLeague?.toJson(),
    "home_season_id": homeSeasonId,
    "away_league": awayLeague?.toJson(),
    "away_season_id": awaySeasonId,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class StandDataDatum {
  String? away;
  int? awayValue;
  String? home;
  int? homeValue;
  String? name;

  StandDataDatum({
    this.away,
    this.awayValue,
    this.home,
    this.homeValue,
    this.name,
  });

  factory StandDataDatum.fromJson(Map<String, dynamic> json) => StandDataDatum(
    away: json["away"],
    awayValue: json["awayValue"],
    home: json["home"],
    homeValue: json["homeValue"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "away": away,
    "awayValue": awayValue,
    "home": home,
    "homeValue": homeValue,
    "name": name,
  };
}

class Lineup {
  LineupAway? away;
  bool? confirmed;
  LineupAway? home;

  Lineup({
    this.away,
    this.confirmed,
    this.home,
  });

  factory Lineup.fromJson(Map<String, dynamic> json) => Lineup(
    away: json["away"] == null ? null : LineupAway.fromJson(json["away"]),
    confirmed: json["confirmed"],
    home: json["home"] == null ? null : LineupAway.fromJson(json["home"]),
  );

  Map<String, dynamic> toJson() => {
    "away": away?.toJson(),
    "confirmed": confirmed,
    "home": home?.toJson(),
  };
}

class LineupAway {
  String? formation;
  List<AwayPlayer>? players;
  MissingPlayers? substitute;
  MissingPlayers? missingPlayers;
  MissingPlayers? playersInOut;
  MissingPlayers? playersGoals;
  MissingPlayers? playersCards;

  LineupAway({
    this.formation,
    this.players,
    this.substitute,
    this.missingPlayers,
    this.playersInOut,
    this.playersGoals,
    this.playersCards,
  });

  factory LineupAway.fromJson(Map<String, dynamic> json) => LineupAway(
    formation: json["formation"],
    players: json["players"] == null ? [] : List<AwayPlayer>.from(json["players"]!.map((x) => AwayPlayer.fromJson(x))),
    substitute: json["substitute"] == null ? null : MissingPlayers.fromJson(json["substitute"]),
    missingPlayers: json["missingPlayers"] == null ? null : MissingPlayers.fromJson(json["missingPlayers"]),
    playersInOut: json["players_InOUT"] == null ? null : MissingPlayers.fromJson(json["players_InOUT"]),
    playersGoals: json["playersGoals"] == null ? null : MissingPlayers.fromJson(json["playersGoals"]),
    playersCards: json["playersCards"] == null ? null : MissingPlayers.fromJson(json["playersCards"]),
  );

  Map<String, dynamic> toJson() => {
    "formation": formation,
    "players": players == null ? [] : List<dynamic>.from(players!.map((x) => x.toJson())),
    "substitute": substitute?.toJson(),
    "missingPlayers": missingPlayers?.toJson(),
    "players_InOUT": playersInOut?.toJson(),
    "playersGoals": playersGoals?.toJson(),
    "playersCards": playersCards?.toJson(),
  };
}

class MissingPlayers {
  String? title;
  List<MissingPlayersPlayer>? players;

  MissingPlayers({
    this.title,
    this.players,
  });

  factory MissingPlayers.fromJson(Map<String, dynamic> json) => MissingPlayers(
    title: json["title"],
    players: json["players"] == null ? [] : List<MissingPlayersPlayer>.from(json["players"]!.map((x) => MissingPlayersPlayer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "players": players == null ? [] : List<dynamic>.from(players!.map((x) => x.toJson())),
  };
}

class MissingPlayersPlayer {
  AwayTeam? player;
  String? jerseyNumber;
  bool? substitute;
  bool? captain;
  Position? position;

  MissingPlayersPlayer({
    this.player,
    this.jerseyNumber,
    this.substitute,
    this.captain,
    this.position,
  });

  factory MissingPlayersPlayer.fromJson(Map<String, dynamic> json) => MissingPlayersPlayer(
    player: json["player"] == null ? null : AwayTeam.fromJson(json["player"]),
    jerseyNumber: json["jerseyNumber"],
    substitute: json["substitute"],
    captain: json["captain"],
    position: positionValues.map[json["position"]]!,
  );

  Map<String, dynamic> toJson() => {
    "player": player?.toJson(),
    "jerseyNumber": jerseyNumber,
    "substitute": substitute,
    "captain": captain,
    "position": positionValues.reverse[position],
  };
}

enum Position {
  D,
  F,
  G,
  M
}

final positionValues = EnumValues({
  "D": Position.D,
  "F": Position.F,
  "G": Position.G,
  "M": Position.M
});

class AwayPlayer {
  AwayTeam? player;
  String? jerseyNumber;
  bool? substitute;
  bool? captain;
  Position? position;
  double? avgRating;
  bool? isGoals;
  bool? isSubstitution;
  dynamic card;

  AwayPlayer({
    this.player,
    this.jerseyNumber,
    this.substitute,
    this.captain,
    this.position,
    this.avgRating,
    this.isGoals,
    this.isSubstitution,
    this.card,
  });

  factory AwayPlayer.fromJson(Map<String, dynamic> json) => AwayPlayer(
    player: json["player"] == null ? null : AwayTeam.fromJson(json["player"]),
    jerseyNumber: json["jerseyNumber"],
    substitute: json["substitute"],
    captain: json["captain"],
    position: positionValues.map[json["position"]]!,
    avgRating: json["avgRating"]?.toDouble(),
    isGoals: json["isGoals"],
    isSubstitution: json["isSubstitution"],
    card: json["card"],
  );

  Map<String, dynamic> toJson() => {
    "player": player?.toJson(),
    "jerseyNumber": jerseyNumber,
    "substitute": substitute,
    "captain": captain,
    "position": positionValues.reverse[position],
    "avgRating": avgRating,
    "isGoals": isGoals,
    "isSubstitution": isSubstitution,
    "card": card,
  };
}

class MatchStats {
  Shotmap? shotmap;
  List<Statistic>? statistics;
  List<MatchStatsHeatmap>? heatmap;

  MatchStats({
    this.shotmap,
    this.statistics,
    this.heatmap,
  });

  factory MatchStats.fromJson(Map<String, dynamic> json) => MatchStats(
    shotmap: json["shotmap"] == null ? null : Shotmap.fromJson(json["shotmap"]),
    statistics: json["statistics"] == null ? [] : List<Statistic>.from(json["statistics"]!.map((x) => Statistic.fromJson(x))),
    heatmap: json["heatmap"] == null ? [] : List<MatchStatsHeatmap>.from(json["heatmap"]!.map((x) => MatchStatsHeatmap.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "shotmap": shotmap?.toJson(),
    "statistics": statistics == null ? [] : List<dynamic>.from(statistics!.map((x) => x.toJson())),
    "heatmap": heatmap == null ? [] : List<dynamic>.from(heatmap!.map((x) => x.toJson())),
  };
}

class MatchStatsHeatmap {
  List<HeatmapDatum>? data;

  MatchStatsHeatmap({
    this.data,
  });

  factory MatchStatsHeatmap.fromJson(Map<String, dynamic> json) => MatchStatsHeatmap(
    data: json["data"] == null ? [] : List<HeatmapDatum>.from(json["data"]!.map((x) => HeatmapDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class HeatmapDatum {
  List<GkCoordinatesElement>? heatmap;
  AwayTeam? player;

  HeatmapDatum({
    this.heatmap,
    this.player,
  });

  factory HeatmapDatum.fromJson(Map<String, dynamic> json) => HeatmapDatum(
    heatmap: json["heatmap"] == null ? [] : List<GkCoordinatesElement>.from(json["heatmap"]!.map((x) => GkCoordinatesElement.fromJson(x))),
    player: json["player"] == null ? null : AwayTeam.fromJson(json["player"]),
  );

  Map<String, dynamic> toJson() => {
    "heatmap": heatmap == null ? [] : List<dynamic>.from(heatmap!.map((x) => x.toJson())),
    "player": player?.toJson(),
  };
}

class GkCoordinatesElement {
  double? x;
  double? y;

  GkCoordinatesElement({
    this.x,
    this.y,
  });

  factory GkCoordinatesElement.fromJson(Map<String, dynamic> json) => GkCoordinatesElement(
    x: json["x"]?.toDouble(),
    y: json["y"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "x": x,
    "y": y,
  };
}

class Shotmap {
  List<ShotmapDatum>? data;

  Shotmap({
    this.data,
  });

  factory Shotmap.fromJson(Map<String, dynamic> json) => Shotmap(
    data: json["data"] == null ? [] : List<ShotmapDatum>.from(json["data"]!.map((x) => ShotmapDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class ShotmapDatum {
  List<DatumDatum>? data;

  ShotmapDatum({
    this.data,
  });

  factory ShotmapDatum.fromJson(Map<String, dynamic> json) => ShotmapDatum(
    data: json["data"] == null ? [] : List<DatumDatum>.from(json["data"]!.map((x) => DatumDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class DatumDatum {
  BodyPart? bodyPart;
  Draw? draw;
  String? goalMouthLocation;
  IncidentType? incidentType;
  bool? isHome;
  AwayTeam? player;
  String? shotType;
  String? situation;
  int? time;
  String? shotTypeText;

  DatumDatum({
    this.bodyPart,
    this.draw,
    this.goalMouthLocation,
    this.incidentType,
    this.isHome,
    this.player,
    this.shotType,
    this.situation,
    this.time,
    this.shotTypeText,
  });

  factory DatumDatum.fromJson(Map<String, dynamic> json) => DatumDatum(
    bodyPart: bodyPartValues.map[json["bodyPart"]]!,
    draw: json["draw"] == null ? null : Draw.fromJson(json["draw"]),
    goalMouthLocation: json["goalMouthLocation"],
    incidentType: incidentTypeValues.map[json["incidentType"]]!,
    isHome: json["isHome"],
    player: json["player"] == null ? null : AwayTeam.fromJson(json["player"]),
    shotType: json["shotType"],
    situation: json["situation"],
    time: json["time"],
    shotTypeText: json["shotTypeText"],
  );

  Map<String, dynamic> toJson() => {
    "bodyPart": bodyPartValues.reverse[bodyPart],
    "draw": draw?.toJson(),
    "goalMouthLocation": goalMouthLocation,
    "incidentType": incidentTypeValues.reverse[incidentType],
    "isHome": isHome,
    "player": player?.toJson(),
    "shotType": shotType,
    "situation": situation,
    "time": time,
    "shotTypeText": shotTypeText,
  };
}

enum BodyPart {
  HEAD,
  LEFT_FOOT,
  RIGHT_FOOT
}

final bodyPartValues = EnumValues({
  "head": BodyPart.HEAD,
  "Left Foot": BodyPart.LEFT_FOOT,
  "Right foot": BodyPart.RIGHT_FOOT
});

class Draw {
  GkCoordinatesElement? start;
  GkCoordinatesElement? end;
  GkCoordinatesElement? goal;
  GkCoordinatesElement? block;

  Draw({
    this.start,
    this.end,
    this.goal,
    this.block,
  });

  factory Draw.fromJson(Map<String, dynamic> json) => Draw(
    start: json["start"] == null ? null : GkCoordinatesElement.fromJson(json["start"]),
    end: json["end"] == null ? null : GkCoordinatesElement.fromJson(json["end"]),
    goal: json["goal"] == null ? null : GkCoordinatesElement.fromJson(json["goal"]),
    block: json["block"] == null ? null : GkCoordinatesElement.fromJson(json["block"]),
  );

  Map<String, dynamic> toJson() => {
    "start": start?.toJson(),
    "end": end?.toJson(),
    "goal": goal?.toJson(),
    "block": block?.toJson(),
  };
}

enum IncidentType {
  SHOT
}

final incidentTypeValues = EnumValues({
  "shot": IncidentType.SHOT
});

class Statistic {
  String? name;
  List<StatisticDatum>? data;

  Statistic({
    this.name,
    this.data,
  });

  factory Statistic.fromJson(Map<String, dynamic> json) => Statistic(
    name: json["name"],
    data: json["data"] == null ? [] : List<StatisticDatum>.from(json["data"]!.map((x) => StatisticDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class StatisticDatum {
  String? away;
  int? awayValue;
  String? home;
  int? homeValue;
  String? key;
  String? name;
  int? renderType;
  int? typeView;

  StatisticDatum({
    this.away,
    this.awayValue,
    this.home,
    this.homeValue,
    this.key,
    this.name,
    this.renderType,
    this.typeView,
  });

  factory StatisticDatum.fromJson(Map<String, dynamic> json) => StatisticDatum(
    away: json["away"],
    awayValue: json["awayValue"],
    home: json["home"],
    homeValue: json["homeValue"],
    key: json["key"],
    name: json["name"],
    renderType: json["renderType"],
    typeView: json["typeView"],
  );

  Map<String, dynamic> toJson() => {
    "away": away,
    "awayValue": awayValue,
    "home": home,
    "homeValue": homeValue,
    "key": key,
    "name": name,
    "renderType": renderType,
    "typeView": typeView,
  };
}

class Overview {
  dynamic object;
  int? type;
  List<Graph>? graph;

  Overview({
    this.object,
    this.type,
    this.graph,
  });

  factory Overview.fromJson(Map<String, dynamic> json) => Overview(
    object: json["object"],
    type: json["type"],
    graph: json["graph"] == null ? [] : List<Graph>.from(json["graph"]!.map((x) => Graph.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "object": object,
    "type": type,
    "graph": graph == null ? [] : List<dynamic>.from(graph!.map((x) => x.toJson())),
  };
}

class Graph {
  double? minute;
  int? value;

  Graph({
    this.minute,
    this.value,
  });

  factory Graph.fromJson(Map<String, dynamic> json) => Graph(
    minute: json["minute"]?.toDouble(),
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "minute": minute,
    "value": value,
  };
}

class ObjectElement {
  String? from;
  int? homeScore;
  int? awayScore;
  AwayTeam? player;
  List<FootballPassingNetworkAction>? footballPassingNetworkAction;
  int? id;
  int? time;
  bool? isHome;
  String? incidentClass;
  String? incidentType;
  int? length;
  int? addedTime;
  String? playerName;
  String? reason;
  String? text;
  AwayTeam? playerIn;
  AwayTeam? playerOut;
  bool? injury;
  AwayTeam? assist1;

  ObjectElement({
    this.from,
    this.homeScore,
    this.awayScore,
    this.player,
    this.footballPassingNetworkAction,
    this.id,
    this.time,
    this.isHome,
    this.incidentClass,
    this.incidentType,
    this.length,
    this.addedTime,
    this.playerName,
    this.reason,
    this.text,
    this.playerIn,
    this.playerOut,
    this.injury,
    this.assist1,
  });

  factory ObjectElement.fromJson(Map<String, dynamic> json) => ObjectElement(
    from: json["from"],
    homeScore: json["homeScore"],
    awayScore: json["awayScore"],
    player: json["player"] == null ? null : AwayTeam.fromJson(json["player"]),
    footballPassingNetworkAction: json["footballPassingNetworkAction"] == null ? [] : List<FootballPassingNetworkAction>.from(json["footballPassingNetworkAction"]!.map((x) => FootballPassingNetworkAction.fromJson(x))),
    id: json["id"],
    time: json["time"],
    isHome: json["isHome"],
    incidentClass: json["incidentClass"],
    incidentType: json["incidentType"],
    length: json["length"],
    addedTime: json["addedTime"],
    playerName: json["playerName"],
    reason: json["reason"],
    text: json["text"],
    playerIn: json["playerIn"] == null ? null : AwayTeam.fromJson(json["playerIn"]),
    playerOut: json["playerOut"] == null ? null : AwayTeam.fromJson(json["playerOut"]),
    injury: json["injury"],
    assist1: json["assist1"] == null ? null : AwayTeam.fromJson(json["assist1"]),
  );

  Map<String, dynamic> toJson() => {
    "from": from,
    "homeScore": homeScore,
    "awayScore": awayScore,
    "player": player?.toJson(),
    "footballPassingNetworkAction": footballPassingNetworkAction == null ? [] : List<dynamic>.from(footballPassingNetworkAction!.map((x) => x.toJson())),
    "id": id,
    "time": time,
    "isHome": isHome,
    "incidentClass": incidentClass,
    "incidentType": incidentType,
    "length": length,
    "addedTime": addedTime,
    "playerName": playerName,
    "reason": reason,
    "text": text,
    "playerIn": playerIn?.toJson(),
    "playerOut": playerOut?.toJson(),
    "injury": injury,
    "assist1": assist1?.toJson(),
  };
}

class FootballPassingNetworkAction {
  Goalkeeper? player;
  EventType? eventType;
  int? time;
  GkCoordinatesElement? playerCoordinates;
  GkCoordinatesElement? passEndCoordinates;
  bool? isAssist;
  String? bodyPart;
  GkCoordinatesElement? gkCoordinates;
  GkCoordinatesElement? goalShotCoordinates;
  GkCoordinatesElement? goalMouthCoordinates;
  Goalkeeper? goalkeeper;

  FootballPassingNetworkAction({
    this.player,
    this.eventType,
    this.time,
    this.playerCoordinates,
    this.passEndCoordinates,
    this.isAssist,
    this.bodyPart,
    this.gkCoordinates,
    this.goalShotCoordinates,
    this.goalMouthCoordinates,
    this.goalkeeper,
  });

  factory FootballPassingNetworkAction.fromJson(Map<String, dynamic> json) => FootballPassingNetworkAction(
    player: json["player"] == null ? null : Goalkeeper.fromJson(json["player"]),
    eventType: eventTypeValues.map[json["eventType"]]!,
    time: json["time"],
    playerCoordinates: json["playerCoordinates"] == null ? null : GkCoordinatesElement.fromJson(json["playerCoordinates"]),
    passEndCoordinates: json["passEndCoordinates"] == null ? null : GkCoordinatesElement.fromJson(json["passEndCoordinates"]),
    isAssist: json["isAssist"],
    bodyPart: json["bodyPart"],
    gkCoordinates: json["gkCoordinates"] == null ? null : GkCoordinatesElement.fromJson(json["gkCoordinates"]),
    goalShotCoordinates: json["goalShotCoordinates"] == null ? null : GkCoordinatesElement.fromJson(json["goalShotCoordinates"]),
    goalMouthCoordinates: json["goalMouthCoordinates"] == null ? null : GkCoordinatesElement.fromJson(json["goalMouthCoordinates"]),
    goalkeeper: json["goalkeeper"] == null ? null : Goalkeeper.fromJson(json["goalkeeper"]),
  );

  Map<String, dynamic> toJson() => {
    "player": player?.toJson(),
    "eventType": eventTypeValues.reverse[eventType],
    "time": time,
    "playerCoordinates": playerCoordinates?.toJson(),
    "passEndCoordinates": passEndCoordinates?.toJson(),
    "isAssist": isAssist,
    "bodyPart": bodyPart,
    "gkCoordinates": gkCoordinates?.toJson(),
    "goalShotCoordinates": goalShotCoordinates?.toJson(),
    "goalMouthCoordinates": goalMouthCoordinates?.toJson(),
    "goalkeeper": goalkeeper?.toJson(),
  };
}

enum EventType {
  BALL_MOVEMENT,
  GOAL,
  PASS
}

final eventTypeValues = EnumValues({
  "ball-movement": EventType.BALL_MOVEMENT,
  "goal": EventType.GOAL,
  "pass": EventType.PASS
});

class Goalkeeper {
  String? name;
  FirstName? firstName;
  String? lastName;
  String? slug;
  String? shortName;
  Position? position;
  String? jerseyNumber;
  int? userCount;
  int? id;
  MarketValueCurrency? marketValueCurrency;
  int? dateOfBirthTimestamp;
  FieldTranslations? fieldTranslations;

  Goalkeeper({
    this.name,
    this.firstName,
    this.lastName,
    this.slug,
    this.shortName,
    this.position,
    this.jerseyNumber,
    this.userCount,
    this.id,
    this.marketValueCurrency,
    this.dateOfBirthTimestamp,
    this.fieldTranslations,
  });

  factory Goalkeeper.fromJson(Map<String, dynamic> json) => Goalkeeper(
    name: json["name"],
    firstName: firstNameValues.map[json["firstName"]]!,
    lastName: json["lastName"],
    slug: json["slug"],
    shortName: json["shortName"],
    position: positionValues.map[json["position"]]!,
    jerseyNumber: json["jerseyNumber"],
    userCount: json["userCount"],
    id: json["id"],
    marketValueCurrency: marketValueCurrencyValues.map[json["marketValueCurrency"]]!,
    dateOfBirthTimestamp: json["dateOfBirthTimestamp"],
    fieldTranslations: json["fieldTranslations"] == null ? null : FieldTranslations.fromJson(json["fieldTranslations"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "firstName": firstNameValues.reverse[firstName],
    "lastName": lastName,
    "slug": slug,
    "shortName": shortName,
    "position": positionValues.reverse[position],
    "jerseyNumber": jerseyNumber,
    "userCount": userCount,
    "id": id,
    "marketValueCurrency": marketValueCurrencyValues.reverse[marketValueCurrency],
    "dateOfBirthTimestamp": dateOfBirthTimestamp,
    "fieldTranslations": fieldTranslations?.toJson(),
  };
}

class FieldTranslations {
  NameTranslation? nameTranslation;
  NameTranslation? shortNameTranslation;

  FieldTranslations({
    this.nameTranslation,
    this.shortNameTranslation,
  });

  factory FieldTranslations.fromJson(Map<String, dynamic> json) => FieldTranslations(
    nameTranslation: json["nameTranslation"] == null ? null : NameTranslation.fromJson(json["nameTranslation"]),
    shortNameTranslation: json["shortNameTranslation"] == null ? null : NameTranslation.fromJson(json["shortNameTranslation"]),
  );

  Map<String, dynamic> toJson() => {
    "nameTranslation": nameTranslation?.toJson(),
    "shortNameTranslation": shortNameTranslation?.toJson(),
  };
}

class NameTranslation {
  String? ar;

  NameTranslation({
    this.ar,
  });

  factory NameTranslation.fromJson(Map<String, dynamic> json) => NameTranslation(
    ar: json["ar"],
  );

  Map<String, dynamic> toJson() => {
    "ar": ar,
  };
}

enum FirstName {
  EMPTY,
  PEDRO_MORISCO
}

final firstNameValues = EnumValues({
  "": FirstName.EMPTY,
  "Pedro Morisco": FirstName.PEDRO_MORISCO
});

enum MarketValueCurrency {
  EUR
}

final marketValueCurrencyValues = EnumValues({
  "EUR": MarketValueCurrency.EUR
});

class PurpleObject {
  int? value;
  AwayTeam? player;
  String? name;
  List<StatisticDatum>? data;
  Refree? refree;
  Tournament? tournament;
  int? startTimestamp;
  int? id;
  AwayTeam? league;
  List<Row>? rows;
  int? season;
  TieBreakingRule? tieBreakingRule;
  String? type;
  List<Match>? away;
  List<Match>? home;

  PurpleObject({
    this.value,
    this.player,
    this.name,
    this.data,
    this.refree,
    this.tournament,
    this.startTimestamp,
    this.id,
    this.league,
    this.rows,
    this.season,
    this.tieBreakingRule,
    this.type,
    this.away,
    this.home,
  });

  factory PurpleObject.fromJson(Map<String, dynamic> json) => PurpleObject(
    value: json["value"],
    player: json["player"] == null ? null : AwayTeam.fromJson(json["player"]),
    name: json["name"],
    data: json["data"] == null ? [] : List<StatisticDatum>.from(json["data"]!.map((x) => StatisticDatum.fromJson(x))),
    refree: json["refree"] == null ? null : Refree.fromJson(json["refree"]),
    tournament: json["tournament"] == null ? null : Tournament.fromJson(json["tournament"]),
    startTimestamp: json["startTimestamp"],
    id: json["_id"],
    league: json["league"] == null ? null : AwayTeam.fromJson(json["league"]),
    rows: json["rows"] == null ? [] : List<Row>.from(json["rows"]!.map((x) => Row.fromJson(x))),
    season: json["season"],
    tieBreakingRule: json["tieBreakingRule"] == null ? null : TieBreakingRule.fromJson(json["tieBreakingRule"]),
    type: json["type"],
    away: json["away"] == null ? [] : List<Match>.from(json["away"]!.map((x) => Match.fromJson(x))),
    home: json["home"] == null ? [] : List<Match>.from(json["home"]!.map((x) => Match.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "player": player?.toJson(),
    "name": name,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "refree": refree?.toJson(),
    "tournament": tournament?.toJson(),
    "startTimestamp": startTimestamp,
    "_id": id,
    "league": league?.toJson(),
    "rows": rows == null ? [] : List<dynamic>.from(rows!.map((x) => x.toJson())),
    "season": season,
    "tieBreakingRule": tieBreakingRule?.toJson(),
    "type": type,
    "away": away == null ? [] : List<dynamic>.from(away!.map((x) => x.toJson())),
    "home": home == null ? [] : List<dynamic>.from(home!.map((x) => x.toJson())),
  };
}

class Refree {
  String? name;
  Country? country;

  Refree({
    this.name,
    this.country,
  });

  factory Refree.fromJson(Map<String, dynamic> json) => Refree(
    name: json["name"],
    country: json["country"] == null ? null : Country.fromJson(json["country"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "country": country?.toJson(),
  };
}

class Row {
  int? draws;
  int? losses;
  int? matches;
  int? points;
  int? position;
  int? scoresAgainst;
  int? scoresFor;
  int? wins;
  AwayTeam? team;
  List<dynamic>? descriptions;
  List<int>? form;
  TieBreakingRule? promotion;

  Row({
    this.draws,
    this.losses,
    this.matches,
    this.points,
    this.position,
    this.scoresAgainst,
    this.scoresFor,
    this.wins,
    this.team,
    this.descriptions,
    this.form,
    this.promotion,
  });

  factory Row.fromJson(Map<String, dynamic> json) => Row(
    draws: json["draws"],
    losses: json["losses"],
    matches: json["matches"],
    points: json["points"],
    position: json["position"],
    scoresAgainst: json["scoresAgainst"],
    scoresFor: json["scoresFor"],
    wins: json["wins"],
    team: json["team"] == null ? null : AwayTeam.fromJson(json["team"]),
    descriptions: json["descriptions"] == null ? [] : List<dynamic>.from(json["descriptions"]!.map((x) => x)),
    form: json["form"] == null ? [] : List<int>.from(json["form"]!.map((x) => x)),
    promotion: json["promotion"] == null ? null : TieBreakingRule.fromJson(json["promotion"]),
  );

  Map<String, dynamic> toJson() => {
    "draws": draws,
    "losses": losses,
    "matches": matches,
    "points": points,
    "position": position,
    "scoresAgainst": scoresAgainst,
    "scoresFor": scoresFor,
    "wins": wins,
    "team": team?.toJson(),
    "descriptions": descriptions == null ? [] : List<dynamic>.from(descriptions!.map((x) => x)),
    "form": form == null ? [] : List<dynamic>.from(form!.map((x) => x)),
    "promotion": promotion?.toJson(),
  };
}

class TieBreakingRule {
  int? id;
  String? text;

  TieBreakingRule({
    this.id,
    this.text,
  });

  factory TieBreakingRule.fromJson(Map<String, dynamic> json) => TieBreakingRule(
    id: json["_id"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "text": text,
  };
}

class PlayersStatistic {
  String? name;
  List<PlayersStatisticValue>? values;
  String? key;
  String? status;

  PlayersStatistic({
    this.name,
    this.values,
    this.key,
    this.status,
  });

  factory PlayersStatistic.fromJson(Map<String, dynamic> json) => PlayersStatistic(
    name: json["name"],
    values: json["values"] == null ? [] : List<PlayersStatisticValue>.from(json["values"]!.map((x) => PlayersStatisticValue.fromJson(x))),
    key: json["key"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x.toJson())),
    "key": key,
    "status": status,
  };
}

class PlayersStatisticValue {
  String? name;
  String? disc;
  ValueType? valueType;
  List<ValueValue>? values;

  PlayersStatisticValue({
    this.name,
    this.disc,
    this.valueType,
    this.values,
  });

  factory PlayersStatisticValue.fromJson(Map<String, dynamic> json) => PlayersStatisticValue(
    name: json["name"],
    disc: json["disc"],
    valueType: valueTypeValues.map[json["value_type"]]!,
    values: json["values"] == null ? [] : List<ValueValue>.from(json["values"]!.map((x) => ValueValue.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "disc": disc,
    "value_type": valueTypeValues.reverse[valueType],
    "values": values == null ? [] : List<dynamic>.from(values!.map((x) => x.toJson())),
  };
}

enum ValueType {
  NUMBER
}

final valueTypeValues = EnumValues({
  "number": ValueType.NUMBER
});

class ValueValue {
  AwayTeam? players;
  int? teams;
  double? value;

  ValueValue({
    this.players,
    this.teams,
    this.value,
  });

  factory ValueValue.fromJson(Map<String, dynamic> json) => ValueValue(
    players: json["players"] == null ? null : AwayTeam.fromJson(json["players"]),
    teams: json["teams"],
    value: json["value"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "players": players?.toJson(),
    "teams": teams,
    "value": value,
  };
}

class Standings {
  List<AwayElement>? away;
  List<AwayElement>? home;
  List<AwayElement>? total;

  Standings({
    this.away,
    this.home,
    this.total,
  });

  factory Standings.fromJson(Map<String, dynamic> json) => Standings(
    away: json["away"] == null ? [] : List<AwayElement>.from(json["away"]!.map((x) => AwayElement.fromJson(x))),
    home: json["home"] == null ? [] : List<AwayElement>.from(json["home"]!.map((x) => AwayElement.fromJson(x))),
    total: json["total"] == null ? [] : List<AwayElement>.from(json["total"]!.map((x) => AwayElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "away": away == null ? [] : List<dynamic>.from(away!.map((x) => x.toJson())),
    "home": home == null ? [] : List<dynamic>.from(home!.map((x) => x.toJson())),
    "total": total == null ? [] : List<dynamic>.from(total!.map((x) => x.toJson())),
  };
}

class AwayElement {
  int? id;
  AwayTeam? league;
  String? name;
  List<Row>? rows;
  int? season;
  TieBreakingRule? tieBreakingRule;
  String? type;

  AwayElement({
    this.id,
    this.league,
    this.name,
    this.rows,
    this.season,
    this.tieBreakingRule,
    this.type,
  });

  factory AwayElement.fromJson(Map<String, dynamic> json) => AwayElement(
    id: json["_id"],
    league: json["league"] == null ? null : AwayTeam.fromJson(json["league"]),
    name: json["name"],
    rows: json["rows"] == null ? [] : List<Row>.from(json["rows"]!.map((x) => Row.fromJson(x))),
    season: json["season"],
    tieBreakingRule: json["tieBreakingRule"] == null ? null : TieBreakingRule.fromJson(json["tieBreakingRule"]),
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "league": league?.toJson(),
    "name": name,
    "rows": rows == null ? [] : List<dynamic>.from(rows!.map((x) => x.toJson())),
    "season": season,
    "tieBreakingRule": tieBreakingRule?.toJson(),
    "type": type,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
