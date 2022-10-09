// ignore_for_file: non_constant_identifier_names

import 'package:elite_mobile_app/models/nba/game_broadcast_props.dart';
import 'package:json_annotation/json_annotation.dart';

part 'game_broadcast_info.g.dart';

@JsonSerializable()
class GameBroadcastInfo {
  GameBroadcastInfo(this.national, this.canadian, this.vTeam, this.hTeam,
      this.spanish_hTeam, this.spanishVTeam, this.spanish_national);
  List<GameBroadcastProps>? national;
  List<GameBroadcastProps>? canadian;
  List<GameBroadcastProps>? vTeam;
  List<GameBroadcastProps>? hTeam;
  List<GameBroadcastProps>? spanishVTeam;
  List<GameBroadcastProps>? spanish_hTeam;
  List<GameBroadcastProps>? spanish_national;

  factory GameBroadcastInfo.fromJson(Map<String, dynamic> data) =>
      _$GameBroadcastInfoFromJson(data);
  Map<String, dynamic> toJson() => _$GameBroadcastInfoToJson(this);
}
