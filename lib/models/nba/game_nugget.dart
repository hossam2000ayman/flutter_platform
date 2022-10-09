import 'package:json_annotation/json_annotation.dart';

part 'game_nugget.g.dart';

@JsonSerializable()
class GameNugget {
  final String? text;
  GameNugget(
    this.text,
  );
  factory GameNugget.fromJson(Map<String, dynamic> data) =>
      _$GameNuggetFromJson(data);
  Map<String, dynamic> toJson() => _$GameNuggetToJson(this);
}
