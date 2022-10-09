// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_arena.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameArena _$GameArenaFromJson(Map<String, dynamic> json) => GameArena(
      name: json['name'] as String?,
      isDomestic: json['isDomestic'] as bool?,
      city: json['city'] as String?,
      stateAbbr: json['stateAbbr'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$GameArenaToJson(GameArena instance) => <String, dynamic>{
      'name': instance.name,
      'isDomestic': instance.isDomestic,
      'city': instance.city,
      'stateAbbr': instance.stateAbbr,
      'country': instance.country,
    };
