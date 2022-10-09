import 'package:json_annotation/json_annotation.dart';

part 'v2_game_period.g.dart';

@JsonSerializable()
class V2GamePeriod {
  int? period;
  String? periodType;
  int? score;
  V2GamePeriod(this.period, this.periodType, this.score);

  factory V2GamePeriod.fromJson(Map<String, dynamic> data) =>
      _$V2GamePeriodFromJson(data);
  Map<String, dynamic> toJson() => _$V2GamePeriodToJson(this);
}
