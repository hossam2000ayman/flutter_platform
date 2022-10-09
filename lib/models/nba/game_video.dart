import 'package:json_annotation/json_annotation.dart';

part 'game_video.g.dart';

@JsonSerializable()
class GameVideo {
  String? regionalBlackoutCodes;
  bool? canPurchase;
  bool? isNationalBlackout;
  bool? isTNTOT;
  bool? isVR;
  bool? tntotIsOnAir;
  bool? isNextVR;
  bool? isNBAOnTNTVR;
  bool? isMagicLeap;
  bool? isOculusVenues;
  List<dynamic>? streams;
  List<dynamic>? deepLink;
  GameVideo(
      this.regionalBlackoutCodes,
      this.canPurchase,
      this.isNationalBlackout,
      this.isTNTOT,
      this.isVR,
      this.tntotIsOnAir,
      this.isNextVR,
      this.isNBAOnTNTVR,
      this.isMagicLeap,
      this.isOculusVenues);

  factory GameVideo.fromJson(Map<String, dynamic> data) =>
      _$GameVideoFromJson(data);

  Map<String, dynamic> toJson() => _$GameVideoToJson(this);
}
