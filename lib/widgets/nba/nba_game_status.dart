import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_schedule.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NBAGameStatus extends StatelessWidget {
  const NBAGameStatus(
      {Key? key, required this.gameStatus, required this.gameData})
      : super(key: key);
  final String? gameStatus;
  final V2GameSchedule? gameData;

  @override
  Widget build(BuildContext context) {
    Widget contentToShow() {
      Widget widget;
      String seriesText = gameData?.seriesText as String;
      DateTime val = DateTime.parse(gameData?.gameEt as String);
      String startTimeEastern = DateFormat("h:mma").format(val);
      String hTeamScore = gameData?.homeTeam?.score.toString() as String;
      String vTeamScore = gameData?.awayTeam?.score.toString() as String;
      String currentPeriodStr = gameData?.period.toString() as String;
      switch (currentPeriodStr) {
        case ("1"):
          currentPeriodStr = currentPeriodStr + 'st';
          break;
        case ("2"):
          currentPeriodStr = currentPeriodStr + 'nd';
          break;
        case ("3"):
          currentPeriodStr = currentPeriodStr + 'rd';
          break;
        default:
          currentPeriodStr = currentPeriodStr + 'th';
      }
      String gameStatusText = gameData?.gameStatusText as String;
      switch (gameStatus) {
        case ("inProgress"):
          widget = Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text('$hTeamScore - $vTeamScore',
                  style: Theme.of(context).textTheme.headline5),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(gameStatusText,
                    style: Theme.of(context).textTheme.bodyText1))
          ]);
          break;
        case ("done"):
          widget = Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text('$hTeamScore-$vTeamScore',
                      style: Theme.of(context).textTheme.headline5)),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("Final",
                      style: Theme.of(context).textTheme.bodyText1)),
              Text(seriesText)
            ],
          );
          break;
        default:
          widget = Column(
            children: [Text('Starts at ' + startTimeEastern), Text(seriesText)],
          );
      }
      return widget;
    }

    return Expanded(flex: 3, child: contentToShow());
  }
}
