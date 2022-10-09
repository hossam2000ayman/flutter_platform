import 'package:elite_mobile_app/models/nba/game_log.dart';
import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:elite_mobile_app/models/nba/player_latest_stats.dart';
import 'package:elite_mobile_app/services/player_service.dart';
import 'package:elite_mobile_app/widgets/nba/nba_player_result.dart';
import 'package:flutter/material.dart';

class NBAPlayerForm extends StatefulWidget {
  const NBAPlayerForm(
      {Key? key,
      required this.playersFuture,
      required this.selectedPlayer,
      required this.setPlayer,
      required this.removePlayer})
      : super(key: key);
  final PlayerInfo? selectedPlayer;
  final Function setPlayer;
  final Function removePlayer;
  final Future<List<PlayerInfo>> playersFuture;
  @override
  _NBAPlayerFormState createState() => _NBAPlayerFormState();
}

class _NBAPlayerFormState extends State<NBAPlayerForm> {
  String searchString = "";
  bool showGamelog = false;
  PlayerLatestStats? latestStats;
  final PlayerService playerService = PlayerService();
  @override
  Widget build(BuildContext context) {
    var playerToShow = widget.selectedPlayer;
    if (playerToShow != null) {
      String _playerFutureName =
          '${widget.selectedPlayer?.firstName}${widget.selectedPlayer?.lastName}'
              .replaceAll(RegExp(r"\s+"), "");
      final Future<PlayerLatestStats> _seasonStatsFuture =
          playerService.getPlayersStats(_playerFutureName);
      final Future<List<Gamelog>> _gameLogFuture = playerService.getGamelog(
          widget.selectedPlayer?.firstName, widget.selectedPlayer?.lastName);

      Function? toggleGamelog() {
        setState(() {
          showGamelog = !showGamelog;
        });
        return null;
      }

      return NBAPlayerResult(
        handleCancelTap: widget.removePlayer,
        seasonStatsFuture: _seasonStatsFuture,
        gameLogFuture: _gameLogFuture,
        playerToShow: playerToShow,
        showGamelog: showGamelog,
        toggleGamelog: toggleGamelog,
      );
    }
    return Column(children: <Widget>[
      Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 1.2,
                  offset: Offset(1.0, 1.0),
                  color: Color.fromRGBO(0, 0, 0, 0.3)),
            ],
          ),
          child: TextField(
            onChanged: (text) {
              setState(() {
                searchString = text.toLowerCase();
              });
            },
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey.shade700,
            ),
            decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Enter a NBA player name',
                prefixIcon: Icon(Icons.person)),
          )),
      FutureBuilder(
          future: widget.playersFuture,
          builder:
              (BuildContext context, AsyncSnapshot<List<PlayerInfo>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                !snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            List<PlayerInfo> players = snapshot.data as List<PlayerInfo>;
            List<PlayerInfo> results = [];
            if (searchString.isEmpty) {
              results = players;
            } else {
              results = players
                  .where((player) =>
                      player.firstName
                          .toLowerCase()
                          .contains(searchString.toLowerCase()) ||
                      player.lastName
                          .toLowerCase()
                          .contains(searchString.toLowerCase()) ||
                      '${player.firstName} ${player.lastName}'
                          .toLowerCase()
                          .contains(searchString.toLowerCase()))
                  .toList();
            }
            return SizedBox(
                height: 200,
                child: ListView.builder(
                    itemCount: results.length > 10 ? 10 : results.length,
                    itemBuilder: (BuildContext context, int index) {
                      String displayName =
                          '${results[index].firstName} ${results[index].lastName}';
                      PlayerInfo player = results[index];
                      return Card(
                          child: ListTile(
                              onTap: () {
                                widget.setPlayer(player);
                              },
                              title: Text(displayName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(0, 0, 0, 0.5)))));
                    }));
          })
    ]);
  }
}
