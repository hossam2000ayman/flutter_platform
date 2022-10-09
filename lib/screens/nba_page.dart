import 'package:elite_mobile_app/screens/nba_player_page.dart';
import 'package:elite_mobile_app/screens/nba_schedule_page.dart';
import 'package:flutter/material.dart';

class NBAPage extends StatefulWidget {
  const NBAPage({Key? key}) : super(key: key);
  @override
  _NBAPageState createState() => _NBAPageState();
}

class _NBAPageState extends State<NBAPage> {
  String pageToShow = "Search";
  @override
  Widget build(BuildContext context) {
    Widget contentToShow() {
      Widget widget;
      switch (pageToShow) {
        case ("Schedule"):
          widget = const NBASchedulePage();
          break;
        default:
          widget = const NBAPlayerPage();
      }
      return widget;
    }

    Function? setPage(String page) {
      setState(() {
        pageToShow = page;
      });
      return null;
    }

    return Container(
        alignment: const Alignment(0, 0),
        child: Stack(children: <Widget>[
          contentToShow(),
          Positioned(
            left: 4.0,
            bottom: 24.0,
            child: Container(
                width: 30,
                height: 159,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(190, 225, 230, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              iconSize: 18,
                              onPressed: () => {setPage('Search')},
                              icon:
                                  const Icon(Icons.poll, color: Colors.white))),
                      Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              iconSize: 18,
                              onPressed: () => {setPage('Schedule')},
                              icon: const Icon(Icons.calendar_today,
                                  color: Colors.white))),
                      const Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              iconSize: 18,
                              onPressed: null,
                              icon: Icon(Icons.article_outlined,
                                  color: Colors.white)))
                    ])),
          ),
        ]));
  }
}
