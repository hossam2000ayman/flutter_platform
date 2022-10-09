import 'package:elite_mobile_app/models/nba/regular_season_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'regular_season_stats.g.dart';

@JsonSerializable()
class RegularSeasonStats {
  List<RegularSeasonData>? season;
  RegularSeasonStats(this.season);

  factory RegularSeasonStats.fromJson(Map<String, dynamic> data) =>
      _$RegularSeasonStatsFromJson(data);

  Map<String, dynamic> toJson() => _$RegularSeasonStatsToJson(this);
}
