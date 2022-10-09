import 'package:json_annotation/json_annotation.dart';

part 'game_duration.g.dart';

@JsonSerializable()
class GameDuration {
  final String? hours;
  final String? minutes;
  GameDuration(this.hours, this.minutes);
  factory GameDuration.fromJson(Map<String, dynamic> data) =>
      _$GameDurationFromJson(data);
  Map<String, dynamic> toJson() => _$GameDurationToJson(this);
}
