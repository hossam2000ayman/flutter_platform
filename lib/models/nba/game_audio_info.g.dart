// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_audio_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameAudioInfo _$GameAudioInfoFromJson(Map<String, dynamic> json) =>
    GameAudioInfo(
      json['language'] as String?,
      json['isOnAir'] as bool?,
      json['streamId'] as String?,
    );

Map<String, dynamic> _$GameAudioInfoToJson(GameAudioInfo instance) =>
    <String, dynamic>{
      'language': instance.language,
      'isOnAir': instance.isOnAir,
      'streamId': instance.streamId,
    };
