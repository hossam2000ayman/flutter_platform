import 'package:json_annotation/json_annotation.dart';

part 'game_deep_link.g.dart';

@JsonSerializable()
class GameDeepLink {
  String? broadcaster;
  String? regionalMarketCodes;
  String? iosApp;
  String? androidApp;
  String? desktopWeb;
  String? mobileWeb;

  GameDeepLink(this.broadcaster, this.regionalMarketCodes, this.iosApp,
      this.androidApp, this.desktopWeb, this.mobileWeb);

  factory GameDeepLink.fromJson(Map<String, dynamic> data) =>
      _$GameDeepLinkFromJson(data);

  Map<String, dynamic> toJson() => _$GameDeepLinkToJson(this);
}
