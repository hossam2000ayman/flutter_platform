import 'package:json_annotation/json_annotation.dart';
import 'package:elite_mobile_app/models/nba/player_draft_info.dart';
import 'package:elite_mobile_app/models/nba/player_team_info.dart';
import 'package:elite_mobile_app/models/nba/team_site.dart';

part 'player_info.g.dart';

@JsonSerializable()
class PlayerInfo {
  PlayerInfo(
    this.temporaryDisplayName,
    this.firstName,
    this.lastName,
    this.personId,
    this.teamId,
    this.jersey,
    this.isActive,
    this.pos,
    this.heightFeet,
    this.heightInches,
    this.heightMeters,
    this.weightPounds,
    this.weightKilograms,
    this.dateOfBirthUTC,
    this.teamSitesOnly,
    this.teams,
    this.draft,
    this.nbaDebutYear,
    this.yearsPro,
    this.collegeName,
    this.lastAffiliation,
    this.country,
  );
  String? temporaryDisplayName;
  String firstName;
  String lastName;
  String personId;
  String? teamId;
  String? jersey;
  bool? isActive;
  String? pos;
  String? heightFeet;
  String? heightInches;
  String? heightMeters;
  String? weightPounds;
  String? weightKilograms;
  String? dateOfBirthUTC;
  TeamSite? teamSitesOnly;
  String? nbaDebutYear;
  String? yearsPro;
  String? collegeName;
  String? lastAffiliation;
  String? country;
  PlayerDraftInfo? draft;
  List<PlayerTeamInfo>? teams;

  factory PlayerInfo.fromJson(Map<String, dynamic> data) =>
      _$PlayerInfoFromJson(data);

  Map<String, dynamic> toJson() => _$PlayerInfoToJson(this);
}
