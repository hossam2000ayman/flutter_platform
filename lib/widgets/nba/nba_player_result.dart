import 'package:elite_mobile_app/models/nba/game_log.dart';
import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:elite_mobile_app/models/nba/player_latest_stats.dart';
import 'package:elite_mobile_app/widgets/nba/season_stat_column.dart';
import 'package:flutter/material.dart';

class NBAPlayerResult extends StatelessWidget {
  const NBAPlayerResult(
      {Key? key,
      required this.playerToShow,
      required this.handleCancelTap,
      required this.seasonStatsFuture,
      required this.showGamelog,
      required this.gameLogFuture,
      required this.toggleGamelog})
      : super(key: key);
  final PlayerInfo? playerToShow;
  final Function handleCancelTap;
  final Function toggleGamelog;
  final Future<PlayerLatestStats> seasonStatsFuture;
  final Future<List<Gamelog>> gameLogFuture;
  final bool showGamelog;
  @override
  Widget build(BuildContext context) {
    String playerDisplayName = playerToShow != null
        ? '${playerToShow?.firstName} ${playerToShow?.lastName}'
        : "";
    String _baseImgUrl =
        'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/';
    String imageUrl = '$_baseImgUrl/${playerToShow?.personId}.png';
    // String _showLogText =
    //     showGamelog ? "Hide Latest Games" : "Show Latest Games";
    // double _angle = showGamelog ? -90 : 0;

    // final List<String> _logHeaders = [
    //   "Game",
    //   "Opp",
    //   "Min",
    //   "Pts",
    //   "FG",
    //   "3FG",
    //   "FT",
    //   "Off Reb",
    //   "Def Reb",
    //   "Reb",
    //   "Ast",
    //   "Stl",
    //   "Blk",
    //   "PF",
    //   "TO",
    //   "+/-"
    // ];
    // final List<String> _logDataRow = [
    //   "date",
    //   "opp",
    //   "min",
    //   "pts",
    //   "fg",
    //   "threeFg",
    //   "ft",
    //   "offReb",
    //   "defReb",
    //   "reb",
    //   "ast",
    //   "stl",
    //   "blk",
    //   "pf",
    //   "to",
    //   "plusMinus",
    // ];
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Expanded(
                    flex: 0,
                    child: IconButton(
                      icon: const Icon(Icons.cancel_rounded),
                      onPressed: () => handleCancelTap(),
                    )),
                Expanded(
                    flex: 0,
                    child: Image.network(imageUrl,
                        fit: BoxFit.cover, height: 60, width: 60)),
                Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(playerDisplayName,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.blueGrey.shade700)))),
                const Expanded(flex: 0, child: Text("2021"))
              ]),
          FutureBuilder(
              future: seasonStatsFuture,
              builder: (BuildContext context,
                  AsyncSnapshot<PlayerLatestStats> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting ||
                    !snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                PlayerLatestStats stats = snapshot.data as PlayerLatestStats;
                String? _ppg = stats.ppg ?? "";
                String? _rpg = stats.rpg ?? "";
                String? _apg = stats.apg ?? "";
                String? _fgp = stats.fgp != null ? '${stats.fgp} %' : "";
                String? _ftp = stats.ftp != null ? '${stats.ftp} %' : "";
                String? _gamesPlayed = stats.gamesPlayed ?? "";
                return SizedBox(
                    height: 55,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          NBASeasonStatColumn("Games Played", _gamesPlayed),
                          NBASeasonStatColumn("Pts", _ppg),
                          NBASeasonStatColumn("Reb", _rpg),
                          NBASeasonStatColumn("Ast", _apg),
                          NBASeasonStatColumn("FG %", _fgp),
                          NBASeasonStatColumn("FT %", _ftp)
                        ]));
              }),
          // Row(textDirection: TextDirection.rtl, children: [
          //   Text(_showLogText),
          //   Transform.rotate(
          //       angle: _angle * pi / 180,
          //       child: IconButton(
          //         onPressed: () => toggleGamelog(),
          //         icon: const Icon(Icons.keyboard_arrow_left),
          //       ))
          // ]),
          // SizedBox(
          //     height: 40,
          //     child: ListView(
          //         scrollDirection: Axis.horizontal,
          //         children: List.from(_logHeaders.map((header) => Padding(
          //             padding:
          //                 const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          //             child: Text(header)))))),
          // FutureBuilder(
          //     future: gameLogFuture,
          //     builder:
          //         (BuildContext context, AsyncSnapshot<List<Gamelog>> snapshot) {
          //       if (snapshot.connectionState == ConnectionState.waiting ||
          //           !snapshot.hasData) {
          //         return const Center(child: CircularProgressIndicator());
          //       }
          //       List<Gamelog> _log = snapshot.data as List<Gamelog>;
          //       return SizedBox(
          //           height: 300,
          //           child: ListView.builder(
          //               itemCount: _log.length > 10 ? 10 : _log.length,
          //               scrollDirection: Axis.vertical,
          //               itemBuilder: (BuildContext context, int index) {
          //                 return SizedBox(
          //                     height: 40,
          //                     child: ListView(
          //                         scrollDirection: Axis.horizontal,
          //                         children: List.from(_logDataRow.map((stat) =>
          //                             Padding(
          //                                 padding: const EdgeInsets.symmetric(
          //                                     horizontal: 5, vertical: 5),
          //                                 child: Text(_log[index].date))))));
          //               }));
          //     })
        ]));
  }
}
