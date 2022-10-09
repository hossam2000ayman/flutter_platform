import 'package:elite_mobile_app/models/nba/game_arena.dart';
import 'package:elite_mobile_app/models/nba/game_duration.dart';
import 'package:elite_mobile_app/models/nba/game_nugget.dart';
import 'package:elite_mobile_app/models/nba/game_period.dart';
import 'package:elite_mobile_app/models/nba/game_team_info.dart';
import 'package:elite_mobile_app/models/nba/game_tickets.dart';
import 'package:elite_mobile_app/models/nba/game_watch.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_info.g.dart';

@JsonSerializable()
class GameInfo {
  GameInfo(
      this.seasonStageId,
      this.seasonYear,
      this.leagueName,
      this.gameId,
      this.arena,
      this.isGameActivated,
      this.statusNum,
      this.extendedStatusNum,
      this.startTimeEastern,
      this.startTimeUTC,
      this.startDateEastern,
      this.homeStartDate,
      this.homeStartTime,
      this.visitorStartDate,
      this.visitorStartTime,
      this.gameUrlCode,
      this.clock,
      this.isBuzzerBeater,
      this.isPreviewArticleAvail,
      this.isRecapArticleAvail,
      this.nugget,
      this.attendance,
      this.tickets,
      this.hasGameBookPdf,
      this.isStartTimeTBD,
      this.isNeutralVenue,
      this.gameDuration,
      this.period,
      this.vTeam,
      this.hTeam,
      this.watch);
  int? seasonStageId;
  String? seasonYear;
  String? leagueName;
  String? gameId;
  GameArena? arena;
  bool? isGameActivated;
  int? statusNum;
  int? extendedStatusNum;
  String? startTimeEastern;
  String? startTimeUTC;
  String? startDateEastern;
  String? homeStartDate;
  String? homeStartTime;
  String? visitorStartDate;
  String? visitorStartTime;
  String? gameUrlCode;
  String? clock;
  bool? isBuzzerBeater;
  bool? isPreviewArticleAvail;
  bool? isRecapArticleAvail;
  GameNugget? nugget;
  String? attendance;
  GameTicket? tickets;
  bool? hasGameBookPdf;
  bool? isStartTimeTBD;
  bool? isNeutralVenue;
  GameDuration? gameDuration;
  GamePeriod? period;
  GameTeamInfo? vTeam;
  GameTeamInfo? hTeam;
  GameWatch? watch;

  factory GameInfo.fromJson(Map<String, dynamic> data) =>
      _$GameInfoFromJson(data);

  Map<String, dynamic> toJson() => _$GameInfoToJson(this);
}
