// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gamelog _$GamelogFromJson(Map<String, dynamic> json) => Gamelog(
      json['date'] as String,
      json['opp'] as String,
      json['min'] as String,
      json['pts'] as String,
      json['fg'] as String,
      json['threeFg'] as String,
      json['ft'] as String,
      json['offReb'] as String,
      json['defReb'] as String,
      json['reb'] as String,
      json['ast'] as String,
      json['stl'] as String,
      json['blk'] as String,
      json['pf'] as String,
      json['to'] as String,
      json['plusMinus'] as String,
    );

Map<String, dynamic> _$GamelogToJson(Gamelog instance) => <String, dynamic>{
      'date': instance.date,
      'opp': instance.opp,
      'min': instance.min,
      'pts': instance.pts,
      'fg': instance.fg,
      'threeFg': instance.threeFg,
      'ft': instance.ft,
      'offReb': instance.offReb,
      'defReb': instance.defReb,
      'reb': instance.reb,
      'ast': instance.ast,
      'stl': instance.stl,
      'blk': instance.blk,
      'pf': instance.pf,
      'to': instance.to,
      'plusMinus': instance.plusMinus,
    };
