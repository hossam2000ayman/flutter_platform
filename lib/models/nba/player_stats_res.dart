import 'package:elite_mobile_app/models/nba/player_career_stats.dart';
import 'package:elite_mobile_app/models/nba/player_latest_stats.dart';
import 'package:elite_mobile_app/models/nba/regular_season_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_stats_res.g.dart';

@JsonSerializable()
class PlayerStatsRes {
  PlayerLatestStats latest;
  PlayerCareerStats careerSummary;
  RegularSeasonData regularSeason;

  PlayerStatsRes(
    this.latest,
    this.careerSummary,
    this.regularSeason,
  );

  factory PlayerStatsRes.fromJson(Map<String, dynamic> data) =>
      _$PlayerStatsResFromJson(data);

  Map<String, dynamic> toJson() => _$PlayerStatsResToJson(this);
}
