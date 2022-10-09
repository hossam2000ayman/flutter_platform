// ignore_for_file: non_constant_identifier_names
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_schedule.dart';
import 'package:elite_mobile_app/services/game_service.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_status.dart';
import 'package:elite_mobile_app/widgets/nba/nba_game_team_info.dart';
import 'package:flutter/material.dart';

class NBASchedulePage extends StatefulWidget {
  const NBASchedulePage({Key? key}) : super(key: key);
  @override
  _NBASchedulePageState createState() => _NBASchedulePageState();
}

class _NBASchedulePageState extends State<NBASchedulePage> {
  final GameService gameService = GameService();
  String YYYY_MM_DD = DateTime.now().toIso8601String().split('T').first;
  @override
  Widget build(BuildContext context) {
    Future<List<V2GameSchedule>> _gameScheduleFuture = gameService.getGamesV2();
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              flex: 0,
              child: Text("Games Today",
                  style: Theme.of(context).textTheme.headline1)),
          Expanded(
              flex: 3,
              child: RefreshIndicator(
                  child: FutureBuilder(
                      future: _gameScheduleFuture,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<V2GameSchedule>> snapshot) {
                        if (snapshot.connectionState ==
                                ConnectionState.waiting ||
                            !snapshot.hasData) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        List<V2GameSchedule> _gameSchedule =
                            snapshot.data as List<V2GameSchedule>;
                        return SizedBox(
                            height: double.infinity,
                            child: ListView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemCount: _gameSchedule.length,
                                itemBuilder: (BuildContext context, int index) {
                                  String? status = '';
                                  int? gameStatus =
                                      _gameSchedule[index].gameStatus;

                                  if (gameStatus == 1) {
                                    status = 'haventStarted';
                                  }
                                  if (gameStatus == 2) {
                                    status = 'inProgress';
                                  }
                                  if (gameStatus! > 2) {
                                    status = 'done';
                                  }
                                  return Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  width: 2,
                                                  color: Colors
                                                      .blueGrey.shade100))),
                                      child: Row(children: [
                                        NBAGameTeamInfo(
                                            teamData:
                                                _gameSchedule[index].homeTeam,
                                            isAway: false),
                                        NBAGameStatus(
                                            gameStatus: status,
                                            gameData: _gameSchedule[index]),
                                        NBAGameTeamInfo(
                                            teamData:
                                                _gameSchedule[index].awayTeam,
                                            isAway: true)
                                      ]));
                                }));
                      }),
                  onRefresh: () async {
                    setState(() {
                      _gameScheduleFuture = gameService.getGamesV2();
                    });
                  }))
        ]);
  }
}
