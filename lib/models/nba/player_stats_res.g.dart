// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats_res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerStatsRes _$PlayerStatsResFromJson(Map<String, dynamic> json) =>
    PlayerStatsRes(
      PlayerLatestStats.fromJson(json['latest'] as Map<String, dynamic>),
      PlayerCareerStats.fromJson(json['careerSummary'] as Map<String, dynamic>),
      RegularSeasonData.fromJson(json['regularSeason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerStatsResToJson(PlayerStatsRes instance) =>
    <String, dynamic>{
      'latest': instance.latest,
      'careerSummary': instance.careerSummary,
      'regularSeason': instance.regularSeason,
    };
