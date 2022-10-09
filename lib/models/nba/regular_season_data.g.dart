// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regular_season_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegularSeasonData _$RegularSeasonDataFromJson(Map<String, dynamic> json) =>
    RegularSeasonData(
      json['seasonYear'] as String?,
      (json['teams'] as List<dynamic>?)
          ?.map(
              (e) => RegularSeasonTeamStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['total'] == null
          ? null
          : PlayerLatestStats.fromJson(json['total'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegularSeasonDataToJson(RegularSeasonData instance) =>
    <String, dynamic>{
      'seasonYear': instance.seasonYear,
      'teams': instance.teams,
      'total': instance.total,
    };
