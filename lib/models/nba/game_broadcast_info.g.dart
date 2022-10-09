// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_broadcast_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameBroadcastInfo _$GameBroadcastInfoFromJson(Map<String, dynamic> json) =>
    GameBroadcastInfo(
      (json['national'] as List<dynamic>?)
          ?.map((e) => GameBroadcastProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['canadian'] as List<dynamic>?)
          ?.map((e) => GameBroadcastProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['vTeam'] as List<dynamic>?)
          ?.map((e) => GameBroadcastProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['hTeam'] as List<dynamic>?)
          ?.map((e) => GameBroadcastProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['spanish_hTeam'] as List<dynamic>?)
          ?.map((e) => GameBroadcastProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['spanishVTeam'] as List<dynamic>?)
          ?.map((e) => GameBroadcastProps.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['spanish_national'] as List<dynamic>?)
          ?.map((e) => GameBroadcastProps.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameBroadcastInfoToJson(GameBroadcastInfo instance) =>
    <String, dynamic>{
      'national': instance.national,
      'canadian': instance.canadian,
      'vTeam': instance.vTeam,
      'hTeam': instance.hTeam,
      'spanishVTeam': instance.spanishVTeam,
      'spanish_hTeam': instance.spanish_hTeam,
      'spanish_national': instance.spanish_national,
    };
