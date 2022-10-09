// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_tickets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameTicket _$GameTicketFromJson(Map<String, dynamic> json) => GameTicket(
      json['mobileApp'] as String?,
      json['desktopWeb'] as String?,
      json['mobileWeb'] as String?,
      json['leagGameInfo'] as String?,
      json['leagTix'] as String?,
    );

Map<String, dynamic> _$GameTicketToJson(GameTicket instance) =>
    <String, dynamic>{
      'mobileApp': instance.mobileApp,
      'desktopWeb': instance.desktopWeb,
      'mobileWeb': instance.mobileWeb,
      'leagGameInfo': instance.leagGameInfo,
      'leagTix': instance.leagTix,
    };
