// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_game_leader.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2GameLeader _$V2GameLeaderFromJson(Map<String, dynamic> json) => V2GameLeader(
      json['personId'] as int?,
      json['name'] as String?,
      json['jerseyNum'] as String?,
      json['position'] as String?,
      json['teamTriCode'] as String?,
      json['playerSlug'] as String?,
      json['points'] as int?,
      json['rebounds'] as int?,
      json['assists'] as int?,
    );

Map<String, dynamic> _$V2GameLeaderToJson(V2GameLeader instance) =>
    <String, dynamic>{
      'personId': instance.personId,
      'name': instance.name,
      'jerseyNum': instance.jerseyNum,
      'position': instance.position,
      'teamTriCode': instance.teamTriCode,
      'playerSlug': instance.playerSlug,
      'points': instance.points,
      'rebounds': instance.rebounds,
      'assists': instance.assists,
    };
