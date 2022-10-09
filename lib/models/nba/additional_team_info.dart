import 'package:json_annotation/json_annotation.dart';

part 'additional_team_info.g.dart';

@JsonSerializable()
class AdditionalTeamInfo {
  final String? nickname;
  final String? fullName;
  final String? confName;
  AdditionalTeamInfo(this.nickname, this.fullName, this.confName);
  factory AdditionalTeamInfo.fromJson(Map<String, dynamic> data) =>
      _$AdditionalTeamInfoFromJson(data);
  Map<String, dynamic> toJson() => _$AdditionalTeamInfoToJson(this);
}
