import 'package:json_annotation/json_annotation.dart';

part 'regular_season_team_stats.g.dart';

@JsonSerializable()
class RegularSeasonTeamStats {
  RegularSeasonTeamStats(
    this.teamId,
    this.ppg,
    this.rpg,
    this.apg,
    this.mpg,
    this.topg,
    this.spg,
    this.bpg,
    this.tpp,
    this.ftp,
    this.fgp,
    this.assists,
    this.blocks,
    this.steals,
    this.turnovers,
    this.offReb,
    this.defReb,
    this.totReb,
    this.fgm,
    this.fga,
    this.tpm,
    this.tpa,
    this.ftm,
    this.fta,
    this.pFouls,
    this.points,
    this.gamesPlayed,
    this.gamesStarted,
    this.plusMinus,
    this.min,
    this.dd2,
    this.td3,
  );
  String? teamId;
  String? ppg;
  String? rpg;
  String? apg;
  String? mpg;
  String? topg;
  String? spg;
  String? bpg;
  String? tpp;
  String? ftp;
  String? fgp;
  String? assists;
  String? blocks;
  String? steals;
  String? turnovers;
  String? offReb;
  String? defReb;
  String? totReb;
  String? fgm;
  String? fga;
  String? tpm;
  String? tpa;
  String? ftm;
  String? fta;
  String? pFouls;
  String? points;
  String? gamesPlayed;
  String? gamesStarted;
  String? plusMinus;
  String? min;
  String? dd2;
  String? td3;

  factory RegularSeasonTeamStats.fromJson(Map<String, dynamic> data) =>
      _$RegularSeasonTeamStatsFromJson(data);

  Map<String, dynamic> toJson() => _$RegularSeasonTeamStatsToJson(this);
}
