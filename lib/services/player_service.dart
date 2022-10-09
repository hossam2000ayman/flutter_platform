import 'dart:convert';

import 'package:elite_mobile_app/models/nba/game_log.dart';
import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:elite_mobile_app/models/nba/player_latest_stats.dart';
import 'package:elite_mobile_app/models/nba/player_stats_res.dart';
import 'package:http/http.dart' as http;

class PlayerService {
  final String _baseUrl = "https://nba-api.afam.app/api/players";
  Future<List<PlayerInfo>> getPlayers() async {
    final String _allPlayersUrl = '$_baseUrl/all';
    final res = await http.get(Uri.parse(_allPlayersUrl));
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
      throw "Unable to retrieve information.";
    }
  }

  Future<PlayerLatestStats> getPlayersStats(name) async {
    final String _statsUrl = '$_baseUrl?player_name=$name';
    final res = await http.get(Uri.parse(_statsUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> unSerializedData = jsonDecode(res.body);
      dynamic rawRes = unSerializedData['stats'];
      PlayerStatsRes statsRes = PlayerStatsRes.fromJson(rawRes);
      PlayerLatestStats latestStats = statsRes.latest;
      return latestStats;
    } else {
      throw "Unable to retrieve the player's stats";
    }
  }

  Future<List<Gamelog>> getGamelog(fName, lName) async {
    final String _gameUrl =
        '$_baseUrl/gamelog?first_name=$fName&last_name=$lName';
    final res = await http.get(Uri.parse(_gameUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> rawData = jsonDecode(res.body);
      List<dynamic> rawGamelog = rawData['gamelog'];
      List<Gamelog> gamelog =
          rawGamelog.map((dynamic log) => Gamelog.fromJson(log)).toList();
      return gamelog;
    } else {
      throw "Unable to retrieve latest game stats";
    }
  }
}
