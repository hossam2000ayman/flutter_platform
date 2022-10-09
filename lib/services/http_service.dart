import 'dart:convert';

import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String _baseUrl = "https://nba-api.afam.app/api/players/all";
  Future<List<PlayerInfo>> getPlayers() async {
    final res = await http.get(Uri.parse(_baseUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> unSerializedData = jsonDecode(res.body);
      List<dynamic> body = unSerializedData['players'];
      List<PlayerInfo> players = body
          .map(
            (dynamic player) => PlayerInfo.fromJson(player),
          )
          .toList();
      return players;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
