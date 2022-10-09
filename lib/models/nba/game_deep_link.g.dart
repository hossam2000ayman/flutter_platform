// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_deep_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameDeepLink _$GameDeepLinkFromJson(Map<String, dynamic> json) => GameDeepLink(
      json['broadcaster'] as String?,
      json['regionalMarketCodes'] as String?,
      json['iosApp'] as String?,
      json['androidApp'] as String?,
      json['desktopWeb'] as String?,
      json['mobileWeb'] as String?,
    );

Map<String, dynamic> _$GameDeepLinkToJson(GameDeepLink instance) =>
    <String, dynamic>{
      'broadcaster': instance.broadcaster,
      'regionalMarketCodes': instance.regionalMarketCodes,
      'iosApp': instance.iosApp,
      'androidApp': instance.androidApp,
      'desktopWeb': instance.desktopWeb,
      'mobileWeb': instance.mobileWeb,
    };
