// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regular_season_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegularSeasonStats _$RegularSeasonStatsFromJson(Map<String, dynamic> json) =>
    RegularSeasonStats(
      (json['season'] as List<dynamic>?)
          ?.map((e) => RegularSeasonData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegularSeasonStatsToJson(RegularSeasonStats instance) =>
    <String, dynamic>{
      'season': instance.season,
    };
