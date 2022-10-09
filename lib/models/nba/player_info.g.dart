// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerInfo _$PlayerInfoFromJson(Map<String, dynamic> json) => PlayerInfo(
      json['temporaryDisplayName'] as String?,
      json['firstName'] as String,
      json['lastName'] as String,
      json['personId'] as String,
      json['teamId'] as String?,
      json['jersey'] as String?,
      json['isActive'] as bool?,
      json['pos'] as String?,
      json['heightFeet'] as String?,
      json['heightInches'] as String?,
      json['heightMeters'] as String?,
      json['weightPounds'] as String?,
      json['weightKilograms'] as String?,
      json['dateOfBirthUTC'] as String?,
      json['teamSitesOnly'] == null
          ? null
          : TeamSite.fromJson(json['teamSitesOnly'] as Map<String, dynamic>),
      (json['teams'] as List<dynamic>?)
          ?.map((e) => PlayerTeamInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['draft'] == null
          ? null
          : PlayerDraftInfo.fromJson(json['draft'] as Map<String, dynamic>),
      json['nbaDebutYear'] as String?,
      json['yearsPro'] as String?,
      json['collegeName'] as String?,
      json['lastAffiliation'] as String?,
      json['country'] as String?,
    );

Map<String, dynamic> _$PlayerInfoToJson(PlayerInfo instance) =>
    <String, dynamic>{
      'temporaryDisplayName': instance.temporaryDisplayName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'personId': instance.personId,
      'teamId': instance.teamId,
      'jersey': instance.jersey,
      'isActive': instance.isActive,
      'pos': instance.pos,
      'heightFeet': instance.heightFeet,
      'heightInches': instance.heightInches,
      'heightMeters': instance.heightMeters,
      'weightPounds': instance.weightPounds,
      'weightKilograms': instance.weightKilograms,
      'dateOfBirthUTC': instance.dateOfBirthUTC,
      'teamSitesOnly': instance.teamSitesOnly,
      'nbaDebutYear': instance.nbaDebutYear,
      'yearsPro': instance.yearsPro,
      'collegeName': instance.collegeName,
      'lastAffiliation': instance.lastAffiliation,
      'country': instance.country,
      'draft': instance.draft,
      'teams': instance.teams,
    };
