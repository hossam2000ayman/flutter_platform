// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_stream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameStream _$GameStreamFromJson(Map<String, dynamic> json) => GameStream(
      json['streamType'] as String?,
      json['isOnAir'] as bool?,
      json['doesArchiveExist'] as bool?,
      json['isArchiveAvailToWatch'] as bool?,
      json['duration'] as int?,
      json['streamId'] as String?,
    );

Map<String, dynamic> _$GameStreamToJson(GameStream instance) =>
    <String, dynamic>{
      'streamType': instance.streamType,
      'isOnAir': instance.isOnAir,
      'doesArchiveExist': instance.doesArchiveExist,
      'isArchiveAvailToWatch': instance.isArchiveAvailToWatch,
      'streamId': instance.streamId,
      'duration': instance.duration,
    };
