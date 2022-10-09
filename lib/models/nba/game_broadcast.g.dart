// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_broadcast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameBroadcast _$GameBroadcastFromJson(Map<String, dynamic> json) =>
    GameBroadcast(
      json['broadcasters'] == null
          ? null
          : GameBroadcastInfo.fromJson(
              json['broadcasters'] as Map<String, dynamic>),
      json['video'] == null
          ? null
          : GameVideo.fromJson(json['video'] as Map<String, dynamic>),
      json['audio'] == null
          ? null
          : GameAudio.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameBroadcastToJson(GameBroadcast instance) =>
    <String, dynamic>{
      'broadcasters': instance.broadcasters,
      'video': instance.video,
      'audio': instance.audio,
    };
