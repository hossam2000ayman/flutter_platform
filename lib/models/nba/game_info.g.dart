// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameInfo _$GameInfoFromJson(Map<String, dynamic> json) => GameInfo(
      json['seasonStageId'] as int?,
      json['seasonYear'] as String?,
      json['leagueName'] as String?,
      json['gameId'] as String?,
      json['arena'] == null
          ? null
          : GameArena.fromJson(json['arena'] as Map<String, dynamic>),
      json['isGameActivated'] as bool?,
      json['statusNum'] as int?,
      json['extendedStatusNum'] as int?,
      json['startTimeEastern'] as String?,
      json['startTimeUTC'] as String?,
      json['startDateEastern'] as String?,
      json['homeStartDate'] as String?,
      json['homeStartTime'] as String?,
      json['visitorStartDate'] as String?,
      json['visitorStartTime'] as String?,
      json['gameUrlCode'] as String?,
      json['clock'] as String?,
      json['isBuzzerBeater'] as bool?,
      json['isPreviewArticleAvail'] as bool?,
      json['isRecapArticleAvail'] as bool?,
      json['nugget'] == null
          ? null
          : GameNugget.fromJson(json['nugget'] as Map<String, dynamic>),
      json['attendance'] as String?,
      json['tickets'] == null
          ? null
          : GameTicket.fromJson(json['tickets'] as Map<String, dynamic>),
      json['hasGameBookPdf'] as bool?,
      json['isStartTimeTBD'] as bool?,
      json['isNeutralVenue'] as bool?,
      json['gameDuration'] == null
          ? null
          : GameDuration.fromJson(json['gameDuration'] as Map<String, dynamic>),
      json['period'] == null
          ? null
          : GamePeriod.fromJson(json['period'] as Map<String, dynamic>),
      json['vTeam'] == null
          ? null
          : GameTeamInfo.fromJson(json['vTeam'] as Map<String, dynamic>),
      json['hTeam'] == null
          ? null
          : GameTeamInfo.fromJson(json['hTeam'] as Map<String, dynamic>),
      json['watch'] == null
          ? null
          : GameWatch.fromJson(json['watch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameInfoToJson(GameInfo instance) => <String, dynamic>{
      'seasonStageId': instance.seasonStageId,
      'seasonYear': instance.seasonYear,
      'leagueName': instance.leagueName,
      'gameId': instance.gameId,
      'arena': instance.arena,
      'isGameActivated': instance.isGameActivated,
      'statusNum': instance.statusNum,
      'extendedStatusNum': instance.extendedStatusNum,
      'startTimeEastern': instance.startTimeEastern,
      'startTimeUTC': instance.startTimeUTC,
      'startDateEastern': instance.startDateEastern,
      'homeStartDate': instance.homeStartDate,
      'homeStartTime': instance.homeStartTime,
      'visitorStartDate': instance.visitorStartDate,
      'visitorStartTime': instance.visitorStartTime,
      'gameUrlCode': instance.gameUrlCode,
      'clock': instance.clock,
      'isBuzzerBeater': instance.isBuzzerBeater,
      'isPreviewArticleAvail': instance.isPreviewArticleAvail,
      'isRecapArticleAvail': instance.isRecapArticleAvail,
      'nugget': instance.nugget,
      'attendance': instance.attendance,
      'tickets': instance.tickets,
      'hasGameBookPdf': instance.hasGameBookPdf,
      'isStartTimeTBD': instance.isStartTimeTBD,
      'isNeutralVenue': instance.isNeutralVenue,
      'gameDuration': instance.gameDuration,
      'period': instance.period,
      'vTeam': instance.vTeam,
      'hTeam': instance.hTeam,
      'watch': instance.watch,
    };
