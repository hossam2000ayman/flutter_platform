import 'package:json_annotation/json_annotation.dart';

part 'game_audio_info.g.dart';

@JsonSerializable()
class GameAudioInfo {
  String? language;
  bool? isOnAir;
  String? streamId;
  GameAudioInfo(this.language, this.isOnAir, this.streamId);

  factory GameAudioInfo.fromJson(Map<String, dynamic> data) =>
      _$GameAudioInfoFromJson(data);

  Map<String, dynamic> toJson() => _$GameAudioInfoToJson(this);
}
