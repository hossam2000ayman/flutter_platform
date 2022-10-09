import 'package:elite_mobile_app/models/nba/game_broadcast.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_watch.g.dart';

@JsonSerializable()
class GameWatch {
  GameWatch(this.broadcast);
  GameBroadcast? broadcast;
  factory GameWatch.fromJson(Map<String, dynamic> data) =>
      _$GameWatchFromJson(data);

  Map<String, dynamic> toJson() => _$GameWatchToJson(this);
}
