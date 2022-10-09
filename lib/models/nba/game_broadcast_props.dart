import 'package:json_annotation/json_annotation.dart';

part 'game_broadcast_props.g.dart';

@JsonSerializable()
class GameBroadcastProps {
  GameBroadcastProps(this.shortName, this.longName);
  String? shortName;
  String? longName;

  factory GameBroadcastProps.fromJson(Map<String, dynamic> data) =>
      _$GameBroadcastPropsFromJson(data);
  Map<String, dynamic> toJson() => _$GameBroadcastPropsToJson(this);
}
