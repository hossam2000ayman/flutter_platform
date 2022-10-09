import 'dart:convert';

import 'package:elite_mobile_app/models/nba/game_info.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_schedule.dart';
import 'package:http/http.dart' as http;

class GameService {
  final String _baseUrl = "https://nba-api.afam.app/api/games";
  Future<List<GameInfo>> getGames(String? date) async {
    String _url = _baseUrl;

    if (date!.isNotEmpty) {
      _url = '$_baseUrl?date=' + date;
    }
    final res = await http.get(Uri.parse(_url));
    if (res.statusCode == 200) {
      Map<String, dynamic> unSerializedData = jsonDecode(res.body);
      final body = unSerializedData['data'];
      List<dynamic> rawGames = body['games'];
      List<GameInfo> games =
          rawGames.map((dynamic game) => GameInfo.fromJson(game)).toList();
      return games;
    } else {
      throw "Unable to retrieve games";
    }
  }

  Future<List<V2GameSchedule>> getGamesV2() async {
    String _url = _baseUrl + '/v2';
    final res = await http.get(Uri.parse(_url));
    if (res.statusCode == 200) {
      Map<String, dynamic> rawData = jsonDecode(res.body);
      List<dynamic> rawGames = rawData['games'];
      List<V2GameSchedule> games = rawGames
          .map((dynamic game) => V2GameSchedule.fromJson(game))
          .toList();
      return games;
    } else {
      throw "Unable to retrieve schedule";
    }
  }
}
