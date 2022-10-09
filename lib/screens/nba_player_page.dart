import 'package:elite_mobile_app/models/nba/player_info.dart';
import 'package:elite_mobile_app/services/player_service.dart';
import 'package:elite_mobile_app/widgets/nba_player_form.dart';
import 'package:flutter/material.dart';

class NBAPlayerPage extends StatefulWidget {
  const NBAPlayerPage({Key? key}) : super(key: key);
  @override
  _NBAPlayerPageState createState() => _NBAPlayerPageState();
}

class _NBAPlayerPageState extends State<NBAPlayerPage> {
  final PlayerService playerService = PlayerService();
  PlayerInfo? selectedPlayer;
  PlayerInfo? secondSelectedPlayer;
  Function? setSelectedPlayer(p) {
    setState(() => selectedPlayer = p);
    return null;
  }

  Function? removeSelectedPlayer() {
    setState(() {
      selectedPlayer = null;
      secondSelectedPlayer = null;
    });
    return null;
  }

  Function? setSecondPlayer(p) {
    setState(() => secondSelectedPlayer = p);
    return null;
  }

  Function? removeSecondPlayer() {
    setState(() => secondSelectedPlayer = null);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final _playersFuture = playerService.getPlayers();

    return Column(children: [
      Expanded(
        flex: 1,
        child: Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: Text('Search Players By Name',
                style: Theme.of(context).textTheme.headline1)),
      ),
      Expanded(
          flex: 3,
          child: Container(
            alignment: const Alignment(0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Column(children: [
              NBAPlayerForm(
                  playersFuture: _playersFuture,
                  selectedPlayer: selectedPlayer,
                  setPlayer: setSelectedPlayer,
                  removePlayer: removeSelectedPlayer),
              if (selectedPlayer != null) ...[
                NBAPlayerForm(
                    playersFuture: _playersFuture,
                    selectedPlayer: secondSelectedPlayer,
                    setPlayer: setSecondPlayer,
                    removePlayer: removeSecondPlayer)
              ]
            ]),
          ))
    ]);
  }
}
