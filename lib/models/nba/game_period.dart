import 'package:json_annotation/json_annotation.dart';

part 'game_period.g.dart';

@JsonSerializable()
class GamePeriod {
  final int? current;
  final int? type;
  final int? maxRegular;
  final bool? isHalftime;
  final bool? isEndOfPeriod;
  GamePeriod(this.current, this.type, this.maxRegular, this.isHalftime,
      this.isEndOfPeriod);
  factory GamePeriod.fromJson(Map<String, dynamic> data) =>
      _$GamePeriodFromJson(data);
  Map<String, dynamic> toJson() => _$GamePeriodToJson(this);
}
