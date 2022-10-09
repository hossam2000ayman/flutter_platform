// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_game_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2GameSchedule _$V2GameScheduleFromJson(Map<String, dynamic> json) =>
    V2GameSchedule(
      json['gameId'] as String?,
      json['gameCode'] as String?,
      json['gameStatus'] as int?,
      json['awayTeam'] == null
          ? null
          : V2GameTeam.fromJson(json['awayTeam'] as Map<String, dynamic>),
      json['gameClock'] as String?,
      json['gameEt'] as String?,
      json['gameLeaders'] == null
          ? null
          : V2GameLeadData.fromJson(
              json['gameLeaders'] as Map<String, dynamic>),
      json['gameStatusText'] as String?,
      json['gameTimeUTC'] as String?,
      json['homeTeam'] == null
          ? null
          : V2GameTeam.fromJson(json['homeTeam'] as Map<String, dynamic>),
      json['ifNecessary'] as bool?,
      json['pbOdds'] == null
          ? null
          : V2GameOdds.fromJson(json['pbOdds'] as Map<String, dynamic>),
      json['period'] as int?,
      json['regulationPeriods'] as int?,
      json['seriesGameNumber'] as String?,
      json['seriesText'] as String?,
    );

Map<String, dynamic> _$V2GameScheduleToJson(V2GameSchedule instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'gameCode': instance.gameCode,
      'gameStatus': instance.gameStatus,
      'gameStatusText': instance.gameStatusText,
      'period': instance.period,
      'gameClock': instance.gameClock,
      'gameTimeUTC': instance.gameTimeUTC,
      'gameEt': instance.gameEt,
      'regulationPeriods': instance.regulationPeriods,
      'ifNecessary': instance.ifNecessary,
      'seriesGameNumber': instance.seriesGameNumber,
      'seriesText': instance.seriesText,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'gameLeaders': instance.gameLeaders,
      'pbOdds': instance.pbOdds,
    };
