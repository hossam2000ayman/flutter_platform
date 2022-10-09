import 'package:json_annotation/json_annotation.dart';

part 'game_tickets.g.dart';

@JsonSerializable()
class GameTicket {
  GameTicket(this.mobileApp, this.desktopWeb, this.mobileWeb, this.leagGameInfo,
      this.leagTix);
  final String? mobileApp;
  final String? desktopWeb;
  final String? mobileWeb;
  final String? leagGameInfo;
  final String? leagTix;
  factory GameTicket.fromJson(Map<String, dynamic> data) =>
      _$GameTicketFromJson(data);
  Map<String, dynamic> toJson() => _$GameTicketToJson(this);
}
