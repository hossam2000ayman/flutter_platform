// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamePeriod _$GamePeriodFromJson(Map<String, dynamic> json) => GamePeriod(
      json['current'] as int?,
      json['type'] as int?,
      json['maxRegular'] as int?,
      json['isHalftime'] as bool?,
      json['isEndOfPeriod'] as bool?,
    );

Map<String, dynamic> _$GamePeriodToJson(GamePeriod instance) =>
    <String, dynamic>{
      'current': instance.current,
      'type': instance.type,
      'maxRegular': instance.maxRegular,
      'isHalftime': instance.isHalftime,
      'isEndOfPeriod': instance.isEndOfPeriod,
    };
