// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_watch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameWatch _$GameWatchFromJson(Map<String, dynamic> json) => GameWatch(
      json['broadcast'] == null
          ? null
          : GameBroadcast.fromJson(json['broadcast'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameWatchToJson(GameWatch instance) => <String, dynamic>{
      'broadcast': instance.broadcast,
    };
