import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_odds.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_team.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_lead_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_game_schedule.g.dart';

@JsonSerializable()
class V2GameSchedule {
  String? gameId;
  String? gameCode;
  int? gameStatus;
  String? gameStatusText;
  int? period;
  String? gameClock;
  String? gameTimeUTC;
  String? gameEt;
  int? regulationPeriods;
  bool? ifNecessary;
  String? seriesGameNumber;
  String? seriesText;
  V2GameTeam? homeTeam;
  V2GameTeam? awayTeam;
  V2GameLeadData? gameLeaders;
  V2GameOdds? pbOdds;
  V2GameSchedule(
      this.gameId,
      this.gameCode,
      this.gameStatus,
      this.awayTeam,
      this.gameClock,
      this.gameEt,
      this.gameLeaders,
      this.gameStatusText,
      this.gameTimeUTC,
      this.homeTeam,
      this.ifNecessary,
      this.pbOdds,
      this.period,
      this.regulationPeriods,
      this.seriesGameNumber,
      this.seriesText);
  factory V2GameSchedule.fromJson(Map<String, dynamic> data) =>
      _$V2GameScheduleFromJson(data);
  Map<String, dynamic> toJson() => _$V2GameScheduleToJson(this);
}
