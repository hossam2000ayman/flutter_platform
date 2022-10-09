import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_leader.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_game_lead_data.g.dart';

@JsonSerializable()
class V2GameLeadData {
  V2GameLeader? homeLeaders;
  V2GameLeader? awayLeaders;
  V2GameLeadData(this.homeLeaders, this.awayLeaders);
  factory V2GameLeadData.fromJson(Map<String, dynamic> data) =>
      _$V2GameLeadDataFromJson(data);
  Map<String, dynamic> toJson() => _$V2GameLeadDataToJson(this);
}
