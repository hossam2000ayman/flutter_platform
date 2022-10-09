// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_team_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameTeamInfo _$GameTeamInfoFromJson(Map<String, dynamic> json) => GameTeamInfo(
      json['teamId'] as String?,
      json['win'] as String?,
      json['loss'] as String?,
      json['seriesWin'] as String?,
      json['seriesLoss'] as String?,
      json['score'] as String?,
      json['linescore'] as List<dynamic>?,
      json['additionalInfo'] == null
          ? null
          : AdditionalTeamInfo.fromJson(
              json['additionalInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameTeamInfoToJson(GameTeamInfo instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'win': instance.win,
      'loss': instance.loss,
      'seriesWin': instance.seriesWin,
      'seriesLoss': instance.seriesLoss,
      'score': instance.score,
      'linescore': instance.linescore,
      'additionalInfo': instance.additionalInfo,
    };
