import 'package:elite_mobile_app/models/nba/game_audio.dart';
import 'package:elite_mobile_app/models/nba/game_broadcast_info.dart';
import 'package:elite_mobile_app/models/nba/game_video.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_broadcast.g.dart';

@JsonSerializable()
class GameBroadcast {
  GameBroadcastInfo? broadcasters;
  GameVideo? video;
  GameAudio? audio;

  GameBroadcast(this.broadcasters, this.video, this.audio);

  factory GameBroadcast.fromJson(Map<String, dynamic> data) =>
      _$GameBroadcastFromJson(data);
  Map<String, dynamic> toJson() => _$GameBroadcastToJson(this);
}
