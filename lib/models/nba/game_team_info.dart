import 'package:elite_mobile_app/models/nba/additional_team_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_team_info.g.dart';

@JsonSerializable()
class GameTeamInfo {
  final String? teamId;
  final String? win;
  final String? loss;
  final String? seriesWin;
  final String? seriesLoss;
  final String? score;
  List<dynamic>? linescore;
  final AdditionalTeamInfo? additionalInfo;
  GameTeamInfo(this.teamId, this.win, this.loss, this.seriesWin,
      this.seriesLoss, this.score, this.linescore, this.additionalInfo);
  factory GameTeamInfo.fromJson(Map<String, dynamic> data) =>
      _$GameTeamInfoFromJson(data);
  Map<String, dynamic> toJson() => _$GameTeamInfoToJson(this);
}
