import 'package:json_annotation/json_annotation.dart';

part 'game_stream.g.dart';

@JsonSerializable()
class GameStream {
  String? streamType;
  bool? isOnAir;
  bool? doesArchiveExist;
  bool? isArchiveAvailToWatch;
  String? streamId;
  int? duration;

  GameStream(this.streamType, this.isOnAir, this.doesArchiveExist,
      this.isArchiveAvailToWatch, this.duration, this.streamId);

  factory GameStream.fromJson(Map<String, dynamic> data) =>
      _$GameStreamFromJson(data);

  Map<String, dynamic> toJson() => _$GameStreamToJson(this);
}
