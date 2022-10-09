// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_game_lead_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2GameLeadData _$V2GameLeadDataFromJson(Map<String, dynamic> json) =>
    V2GameLeadData(
      json['homeLeaders'] == null
          ? null
          : V2GameLeader.fromJson(json['homeLeaders'] as Map<String, dynamic>),
      json['awayLeaders'] == null
          ? null
          : V2GameLeader.fromJson(json['awayLeaders'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$V2GameLeadDataToJson(V2GameLeadData instance) =>
    <String, dynamic>{
      'homeLeaders': instance.homeLeaders,
      'awayLeaders': instance.awayLeaders,
    };
