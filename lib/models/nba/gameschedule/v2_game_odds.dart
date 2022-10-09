import 'package:json_annotation/json_annotation.dart';

part 'v2_game_odds.g.dart';

@JsonSerializable()
class V2GameOdds {
  dynamic team;
  int? odds;
  int? suspended;
  V2GameOdds(this.team, this.odds, this.suspended);
  factory V2GameOdds.fromJson(Map<String, dynamic> data) =>
      _$V2GameOddsFromJson(data);
  Map<String, dynamic> toJson() => _$V2GameOddsToJson(this);
}
