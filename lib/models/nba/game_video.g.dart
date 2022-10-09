// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameVideo _$GameVideoFromJson(Map<String, dynamic> json) => GameVideo(
      json['regionalBlackoutCodes'] as String?,
      json['canPurchase'] as bool?,
      json['isNationalBlackout'] as bool?,
      json['isTNTOT'] as bool?,
      json['isVR'] as bool?,
      json['tntotIsOnAir'] as bool?,
      json['isNextVR'] as bool?,
      json['isNBAOnTNTVR'] as bool?,
      json['isMagicLeap'] as bool?,
      json['isOculusVenues'] as bool?,
    )
      ..streams = json['streams'] as List<dynamic>?
      ..deepLink = json['deepLink'] as List<dynamic>?;

Map<String, dynamic> _$GameVideoToJson(GameVideo instance) => <String, dynamic>{
      'regionalBlackoutCodes': instance.regionalBlackoutCodes,
      'canPurchase': instance.canPurchase,
      'isNationalBlackout': instance.isNationalBlackout,
      'isTNTOT': instance.isTNTOT,
      'isVR': instance.isVR,
      'tntotIsOnAir': instance.tntotIsOnAir,
      'isNextVR': instance.isNextVR,
      'isNBAOnTNTVR': instance.isNBAOnTNTVR,
      'isMagicLeap': instance.isMagicLeap,
      'isOculusVenues': instance.isOculusVenues,
      'streams': instance.streams,
      'deepLink': instance.deepLink,
    };
