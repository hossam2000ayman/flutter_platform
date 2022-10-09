// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_game_team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2GameTeam _$V2GameTeamFromJson(Map<String, dynamic> json) => V2GameTeam(
      json['teamId'] as int?,
      json['teamName'] as String?,
      json['teamCity'] as String?,
      json['teamTricode'] as String?,
      json['wins'] as int?,
      json['losses'] as int?,
      json['score'] as int?,
      json['seed'] as String?,
      json['inBonus'] as String?,
      json['timeoutsRemaining'] as int?,
    )..periods = (json['periods'] as List<dynamic>?)
        ?.map((e) => V2GamePeriod.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$V2GameTeamToJson(V2GameTeam instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'teamName': instance.teamName,
      'teamCity': instance.teamCity,
      'teamTricode': instance.teamTricode,
      'wins': instance.wins,
      'losses': instance.losses,
      'score': instance.score,
      'seed': instance.seed,
      'inBonus': instance.inBonus,
      'timeoutsRemaining': instance.timeoutsRemaining,
      'periods': instance.periods,
    };
