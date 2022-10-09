import 'package:elite_mobile_app/models/nba/game_team_info.dart';
import 'package:elite_mobile_app/models/nba/gameschedule/v2_game_team.dart';
import 'package:flutter/material.dart';

class NBAGameTeamInfo extends StatelessWidget {
  const NBAGameTeamInfo(
      {Key? key, required this.teamData, required this.isAway})
      : super(key: key);
  final V2GameTeam? teamData;
  final bool isAway;
  @override
  Widget build(BuildContext context) {
    String _getPlayerImg(String nickname) =>
        'https://b.fssta.com/uploads/application/nba/team-logos/' +
        nickname +
        '.vresize.72.72.medium.0.png';
    String _teamImg = _getPlayerImg(
        teamData?.teamName?.replaceAll(RegExp(r"\s+"), "") as String);
    String? wins = teamData?.wins.toString();
    String losses = teamData?.losses.toString() as String;
    return Expanded(
        flex: 2,
        child: Column(children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Image.network(_teamImg,
                  fit: BoxFit.cover, height: 60, width: 60)),
          Text('$wins - ' + losses,
              style: Theme.of(context).textTheme.bodyText1)
        ]));
  }
}
