// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_game_odds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2GameOdds _$V2GameOddsFromJson(Map<String, dynamic> json) => V2GameOdds(
      json['team'],
      json['odds'] as int?,
      json['suspended'] as int?,
    );

Map<String, dynamic> _$V2GameOddsToJson(V2GameOdds instance) =>
    <String, dynamic>{
      'team': instance.team,
      'odds': instance.odds,
      'suspended': instance.suspended,
    };
