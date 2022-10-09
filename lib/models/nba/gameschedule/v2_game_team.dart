import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_period.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_game_team.g.dart';

@JsonSerializable()
class V2GameTeam {
  int? teamId;
  String? teamName;
  String? teamCity;
  String? teamTricode;
  int? wins;
  int? losses;
  int? score;
  String? seed;
  String? inBonus;
  int? timeoutsRemaining;
  List<V2GamePeriod>? periods;
  V2GameTeam(
      this.teamId,
      this.teamName,
      this.teamCity,
      this.teamTricode,
      this.wins,
      this.losses,
      this.score,
      this.seed,
      this.inBonus,
      this.timeoutsRemaining);

  factory V2GameTeam.fromJson(Map<String, dynamic> data) =>
      _$V2GameTeamFromJson(data);

  Map<String, dynamic> toJson() => _$V2GameTeamToJson(this);
}
