import 'package:flutter/cupertino.dart';

class NBAPlayerGamelog extends StatelessWidget {
  const NBAPlayerGamelog({Key? key, required this.showGamelog})
      : super(key: key);
  final bool showGamelog;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[Row(children: const [])]));
  }
}
