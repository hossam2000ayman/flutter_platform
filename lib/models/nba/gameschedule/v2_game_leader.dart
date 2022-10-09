import 'package:json_annotation/json_annotation.dart';

part 'v2_game_leader.g.dart';

@JsonSerializable()
class V2GameLeader {
  int? personId;
  String? name;
  String? jerseyNum;
  String? position;
  String? teamTriCode;
  String? playerSlug;
  int? points;
  int? rebounds;
  int? assists;

  V2GameLeader(
      this.personId,
      this.name,
      this.jerseyNum,
      this.position,
      this.teamTriCode,
      this.playerSlug,
      this.points,
      this.rebounds,
      this.assists);
  factory V2GameLeader.fromJson(Map<String, dynamic> data) =>
      _$V2GameLeaderFromJson(data);

  Map<String, dynamic> toJson() => _$V2GameLeaderToJson(this);
}
