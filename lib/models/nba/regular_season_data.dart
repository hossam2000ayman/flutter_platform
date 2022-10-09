import 'package:elite_mobile_app/models/nba/player_latest_stats.dart';
import 'package:elite_mobile_app/models/nba/regular_season_team_stats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'regular_season_data.g.dart';

@JsonSerializable()
class RegularSeasonData {
  RegularSeasonData(this.seasonYear, this.teams, this.total);
  String? seasonYear;
  List<RegularSeasonTeamStats>? teams;
  PlayerLatestStats? total;

  factory RegularSeasonData.fromJson(Map<String, dynamic> data) =>
      _$RegularSeasonDataFromJson(data);

  Map<String, dynamic> toJson() => _$RegularSeasonDataToJson(this);
}
