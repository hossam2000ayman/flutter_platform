import 'package:flutter/cupertino.dart';

class MainNav extends StatefulWidget {
  const MainNav({Key? key}) : super(key: key);

  @override
  _MainNavState createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  final String _mainNavTab = 'SPORTS';
  final String _subNavTab = 'NBA';
  double _opacity(String tab, String state) {
    return tab == state ? 1.0.toDouble() : 0.7.toDouble();
  }

  double _boxShadowOpacity(String tab, String state) {
    return tab == state ? 0.3.toDouble() : 0.0.toDouble();
  }

  double _imageOpacity(String tab, String state) {
    return tab == state ? 1.0.toDouble() : 0.3.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> _mainOptions = [
      {
        "category": "SPORTS",
        "backgroundColor":
            Color.fromRGBO(223, 231, 253, _opacity("SPORTS", _mainNavTab)),
        "textColor":
            Color.fromRGBO(134, 148, 188, _opacity("SPORTS", _mainNavTab)),
      },
      {
        "category": "MUSIC",
        "backgroundColor":
            Color.fromRGBO(253, 237, 225, _opacity("MUSIC", _mainNavTab)),
        "textColor":
            Color.fromRGBO(220, 203, 190, _opacity("MUSIC", _mainNavTab)),
      },
      {
        "category": "CULTURE",
        "backgroundColor":
            Color.fromRGBO(190, 225, 230, _opacity("CULTURE", _mainNavTab)),
        "textColor":
            Color.fromRGBO(167, 191, 195, _opacity("CULTURE", _mainNavTab))
      }
    ];

    final List<Map<String, dynamic>> _sportsOptions = [
      {
        "category": "NBA",
        "backgroundColor":
            Color.fromRGBO(234, 228, 233, _opacity("NBA", _subNavTab)),
        "textColor": Color.fromRGBO(138, 138, 138, _opacity("NBA", _subNavTab)),
        "image": const AssetImage("assets/nba-1.png")
      },
      {
        "category": "NFL",
        "backgroundColor":
            Color.fromRGBO(253, 226, 228, _opacity("NFL", _subNavTab)),
        "textColor": Color.fromRGBO(232, 146, 152, _opacity("NFL", _subNavTab)),
        "image": const AssetImage("assets/nfl-thumbnail.png")
      }
    ];
    return Container(
        margin: const EdgeInsets.only(left: 5),
        height: 150,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 0, 9, 0),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ..._sportsOptions.map((subOption) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1.2,
                                offset: const Offset(1.0, 1.0),
                                color: Color.fromRGBO(
                                    0,
                                    0,
                                    0,
                                    _boxShadowOpacity(
                                        subOption['category'], _subNavTab))),
                          ],
                          color: subOption['backgroundColor'],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: SizedBox(
                            height: 40,
                            width: 130,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(subOption['category'],
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.w600,
                                            color: subOption['textColor'])),
                                    Opacity(
                                        opacity: _imageOpacity(
                                            subOption['category'], _subNavTab),
                                        child: Image(
                                            width: 102,
                                            height: 130,
                                            image: subOption['image'],
                                            fit: BoxFit.contain))
                                  ]),
                            ))))
                  ])),
          const SizedBox(height: 10),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ..._mainOptions.map((mainOption) => Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1.2,
                                offset: const Offset(1.0, 1.0),
                                color: Color.fromRGBO(
                                    0,
                                    0,
                                    0,
                                    _boxShadowOpacity(
                                        mainOption['category'], _mainNavTab))),
                          ],
                          color: mainOption['backgroundColor'],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: SizedBox(
                            height: 40,
                            width: 130,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(mainOption['category'],
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w600,
                                      color: mainOption['textColor'])),
                            ))))
                  ]))
        ]));
  }
}
