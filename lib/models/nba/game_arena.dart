import 'package:json_annotation/json_annotation.dart';

part 'game_arena.g.dart';

@JsonSerializable()
class GameArena {
  final String? name;
  final bool? isDomestic;
  final String? city;
  final String? stateAbbr;
  final String? country;
  GameArena(
      {this.name, this.isDomestic, this.city, this.stateAbbr, this.country});
  factory GameArena.fromJson(Map<String, dynamic> data) =>
      _$GameArenaFromJson(data);
  Map<String, dynamic> toJson() => _$GameArenaToJson(this);
}
