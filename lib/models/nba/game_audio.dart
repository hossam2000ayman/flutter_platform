import 'package:json_annotation/json_annotation.dart';

part 'game_audio.g.dart';

@JsonSerializable()
class GameAudio {
  Map<String, dynamic>? national;
  Map<String, dynamic>? vTeam;
  Map<String, dynamic>? hTeam;

  GameAudio(this.national, this.vTeam, this.hTeam);

  factory GameAudio.fromJson(Map<String, dynamic> data) =>
      _$GameAudioFromJson(data);

  Map<String, dynamic> toJson() => _$GameAudioToJson(this);
}
